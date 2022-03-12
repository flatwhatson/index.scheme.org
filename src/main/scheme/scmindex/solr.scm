(define-library
  (scmindex solr)
  (import (scheme base)
          (scheme write)
          (arvyy httpclient)
          (scmindex types-parser))
  
  (export
    index-types
    build-solr-query
    exec-solr-query
    parse-solr-response
    solr-facet-values
    solr-get-suggestions)
  
  (begin
    
    (define (solr-get-suggestions suggest-url text)
      (let* ((resp (post-json suggest-url `((params . ((q . ,text))))))
             (suggest (cdr (assoc 'suggest resp)))
             (nameSuggester (cdar suggest))
             (result (cdar nameSuggester))
             (suggestions (cdr (assoc 'suggestions result))))
        (vector-map
          (lambda (s)
            (cdr (assoc 'term s)))
          suggestions)))
    
    (define (index-types solr-url funcs)
      (define-values
        (supertype-map subtype-strict-map subtype-loose-map)
        (make-type-maps funcs))
      (define payload
        (list->vector
          (map
            (lambda (f)
              (define json (func->json f))
              (define extra
                `((param_subtypes_loose . ,(list->vector (map symbol->string (flatten-type subtype-loose-map (func-param-types f)))))
                  (param_subtypes . ,(list->vector (map symbol->string (flatten-type subtype-strict-map (func-param-types f)))))
                  (return_supertypes . ,(list->vector (map symbol->string (flatten-type supertype-map (func-return-types f)))))))
              (append extra json))
            funcs)))
      (post-json (string-append solr-url "/update/json") payload))
    
    (define (solr-facet-values solr-url facet)
      (define solr-query `((params . ((rows . 0)))))
      (define solr-resp (post-json solr-url solr-query))
      (define facet-counts (cdr (assoc 'facet_counts solr-resp)))
      (define facet-fields (cdr (assoc 'facet_fields facet-counts)))
      (define facet-values (fold-facet-values (cdr (assoc facet facet-fields))))
      (vector-map
        (lambda (e)
          (cdr (assoc 'value e)))
        facet-values))
    
    (define (exec-solr-query solr-url start page-size text libs params returns tags filter-params-loose?)
      (define body (build-solr-query start page-size text libs params returns tags filter-params-loose?))
      (define solr-resp (post-json solr-url body))
      (parse-solr-response solr-resp))

    (define (build-solr-query start page-size text libs params returns tags filter-params-loose?)
      (define fq-lib
        (if (and libs (not (null? libs)))
            (let loop ((libs libs)
                       (str "lib: ("))
              (if (null? (cdr libs))
                  (list (string-append str "\"" (escape-solr-spec (car libs)) "\")"))
                  (loop (cdr libs)
                        (string-append str "\"" (escape-solr-spec (car libs)) "\" OR "))))
            `()))
      (define param-filter-field (if filter-params-loose? "param_subtypes_loose" "param_subtypes"))
      (define fq-params
        (map 
          (lambda (p)
            (string-append param-filter-field ": \"" (escape-solr-spec p) "\""))
          params))
      (define fq-returns
        (map
          (lambda (r)
            (string-append "return_supertypes: \"" (escape-solr-spec r) "\""))
          returns))
      (define fq-tags
        (map
          (lambda (t)
            (string-append "tags: \"" (escape-solr-spec t) "\""))
          tags))
      (define bq-params-types
        (map 
          (lambda (p)
            (string-append "param_types: \"" (escape-solr-spec p) "\"^5"))
          params))
      (define bq-params-subtypes
        (map 
          (lambda (p)
            (string-append "param_subtypes: \"" (escape-solr-spec p) "\"^2"))
          params))
      (define bq-params `(,@bq-params-types ,@bq-params-subtypes))
      (define bq
        (if (null? bq-params)
             '()
             `((bq . ,(list->vector bq-params)))))
      (define fq 
        `((fq . ,(list->vector (append fq-returns fq-params fq-lib fq-tags)))))
      (define q
        (if text
            `((q . ,text))
            `()))
      (define params-json
        (append q bq fq `((start . ,start) (rows . ,page-size))))
      
      `((params . ,params-json)))
    
    (define (parse-solr-response response)
      (define resp (cdr (assoc 'response response)))
      (define total (cdr (assoc 'numFound resp)))
      (define docs (cdr (assoc 'docs resp)))
      (define facet-counts (cdr (assoc 'facet_counts response)))
      (define facet-fields (cdr (assoc 'facet_fields facet-counts)))
      (define lib-facets (fold-facet-values (cdr (assoc 'lib facet-fields))))
      (define param-facets (fold-facet-values (cdr (assoc 'param_types facet-fields))))
      (define return-facets (fold-facet-values (cdr (assoc 'return_types facet-fields))))
      (define tag-facets (fold-facet-values (cdr (assoc 'tags facet-fields))))
      
      `((procedures . ,docs)
        (total . ,total)
        (lib . ,lib-facets)
        (param . ,param-facets)
        (tag . ,tag-facets)
        (return . ,return-facets)))
    
    (define (fold-facet-values vals)
      (let loop ((lst (vector->list vals))
                 (rez '()))
        (cond
          ((null? lst) (list->vector (reverse rez)))
          (else (let ((val (car lst))
                      (count (cadr lst))
                      (rest (cddr lst)))
                  (loop rest
                        (cons 
                          `((value . ,val)
                            (count . ,count))
                          rez)))))))
    
    (define (escape-solr-spec str)
      (define lst*
        (map
          (lambda (char)
            (case char
              ((#\+ #\- #\! #\( #\) #\{ #\} #\[ #\] #\^ #\" #\~ #\* #\: #\/)
               (list #\\ char))
              (else (list char))))
          (string->list str)))
      (list->string (apply append lst*)))))
