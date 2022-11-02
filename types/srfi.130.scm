(((name . "string-cursor?")
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . "string-cursor-start")
  (signature lambda ((string? s)) string-cursor?)
  (tags pure))
 ((name . "string-cursor-end")
  (signature lambda ((string? s)) string-cursor?)
  (tags pure))
 ((name . "string-cursor-next")
  (signature
   lambda
   ((string? s) ((or integer? string-cursor?) cursor))
   string-cursor?)
  (tags pure))
 ((name . "string-cursor-prev")
  (signature
   lambda
   ((string? s) ((or integer? string-cursor?) cursor))
   string-cursor?)
  (tags pure))
 ((name . "string-cursor-forward")
  (signature
   lambda
   ((string? s) ((or integer? string-cursor?) cursor) (integer? nchars))
   string-cursor?)
  (tags pure))
 ((name . "string-cursor-back")
  (signature
   lambda
   ((string? s) ((or integer? string-cursor?) cursor) (integer? nchars))
   string-cursor?)
  (tags pure))
 ((name . "string-cursor=?")
  (signature
   lambda
   (((or integer? string-cursor?) cursor1)
    ((or integer? string-cursor?) cursor2))
   boolean?)
  (tags pure))
 ((name . "string-cursor<?")
  (signature
   lambda
   (((or integer? string-cursor?) cursor1)
    ((or integer? string-cursor?) cursor2))
   boolean?)
  (tags pure))
 ((name . "string-cursor>?")
  (signature
   lambda
   (((or integer? string-cursor?) cursor1)
    ((or integer? string-cursor?) cursor2))
   boolean?)
  (tags pure))
 ((name . "string-cursor<=?")
  (signature
   lambda
   (((or integer? string-cursor?) cursor1)
    ((or integer? string-cursor?) cursor2))
   boolean?)
  (tags pure))
 ((name . "string-cursor>=?")
  (signature
   lambda
   (((or integer? string-cursor?) cursor1)
    ((or integer? string-cursor?) cursor2))
   boolean?)
  (tags pure))
 ((name . "string-cursor-diff")
  (signature
   lambda
   ((string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   integer?)
  (tags pure))
 ((name . "string-cursor->index")
  (signature lambda ((string? s) (string-cursor? cursor)) integer?)
  (tags pure))
 ((name . "string-index->cursor")
  (signature lambda ((string? s) (integer? index)) string-cursor?)
  (tags pure))
 ((name . "string-null?")
  (signature lambda ((string? s)) boolean?)
  (tags pure))
 ((name . "string-every")
  (signature lambda ((procedure? pred) (string? s)) *)
  (subsigs (pred (lambda ((char? c)) *)))
  (tags pure))
 ((name . "string-every")
  (signature
   lambda
   ((procedure? pred) (string? s) ((or integer? string-cursor?) start))
   *)
  (subsigs (pred (lambda ((char? c)) *)))
  (tags pure))
 ((name . "string-every")
  (signature
   lambda
   ((procedure? pred)
    (string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   *)
  (subsigs (pred (lambda ((char? c)) *)))
  (tags pure))
 ((name . "string-any")
  (signature lambda ((procedure? pred) (string? s)) *)
  (subsigs (pred (lambda ((char? c)) *)))
  (tags pure))
 ((name . "string-any")
  (signature
   lambda
   ((procedure? pred) (string? s) ((or integer? string-cursor?) start))
   *)
  (subsigs (pred (lambda ((char? c)) *)))
  (tags pure))
 ((name . "string-any")
  (signature
   lambda
   ((procedure? pred)
    (string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   *)
  (subsigs (pred (lambda ((char? c)) *)))
  (tags pure))
 ((name . "string-tabulate")
  (signature lambda ((procedure? proc) (integer? len)) string?)
  (subsigs (proc (lambda ((integer? index)) char?)))
  (tags pure))
 ((name . "string-tabulate")
  (signature lambda ((procedure? proc) (integer? len)) string?)
  (subsigs (proc (lambda ((integer? index)) char?)))
  (tags pure))
 ((name . "string-unfold")
  (signature lambda ((procedure? stop?) (procedure? mapper) seed) string?)
  (subsigs (stop? (lambda (seed) boolean?)) (mapper (lambda (seed) char?)))
  (tags pure))
 ((name . "string-unfold")
  (signature
   lambda
   ((procedure? stop?) (procedure? mapper) seed (string? base))
   string?)
  (subsigs (stop? (lambda (seed) boolean?)) (mapper (lambda (seed) char?)))
  (tags pure))
 ((name . "string-unfold")
  (signature
   lambda
   ((procedure? stop?)
    (procedure? mapper)
    seed
    (string? base)
    (procedure? make-final))
   string?)
  (subsigs
   (stop? (lambda (seed) boolean?))
   (mapper (lambda (seed) char?))
   (make-final (lambda (seed) string?)))
  (tags pure))
 ((name . "string-unfold-right")
  (signature lambda ((procedure? stop?) (procedure? mapper) seed) string?)
  (subsigs (stop? (lambda (seed) boolean?)) (mapper (lambda (seed) char?)))
  (tags pure))
 ((name . "string-unfold-right")
  (signature
   lambda
   ((procedure? stop?) (procedure? mapper) seed (string? base))
   string?)
  (subsigs (stop? (lambda (seed) boolean?)) (mapper (lambda (seed) char?)))
  (tags pure))
 ((name . "string-unfold-right")
  (signature
   lambda
   ((procedure? stop?)
    (procedure? mapper)
    seed
    (string? base)
    (procedure? make-final))
   string?)
  (subsigs
   (stop? (lambda (seed) boolean?))
   (mapper (lambda (seed) char?))
   (make-final (lambda (seed) string?)))
  (tags pure))
 ((name . "string->list/cursors")
  (signature lambda ((string? s)) list?)
  (tags pure))
 ((name . "string->list/cursors")
  (signature lambda ((string? s) ((or integer? string-cursor?) start)) list?)
  (tags pure))
 ((name . "string->list/cursors")
  (signature
   lambda
   ((string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   list?)
  (tags pure))
 ((name . "string->vector/cursors")
  (signature lambda ((string? s)) vector?)
  (tags pure))
 ((name . "string->vector/cursors")
  (signature lambda ((string? s) ((or integer? string-cursor?) start)) vector?)
  (tags pure))
 ((name . "string->vector/cursors")
  (signature
   lambda
   ((string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   vector?)
  (tags pure))
 ((name . "reverse-list->string")
  (signature lambda ((list? char-list)) string?)
  (tags pure))
 ((name . "string-join")
  (signature lambda ((list? string-list)) string?)
  (tags pure))
 ((name . "string-join")
  (signature lambda ((list? string-list) (string? delimiter)) string?)
  (tags pure))
 ((name . "string-join")
  (signature
   lambda
   ((list? string-list) (string? delimiter) (symbol? grammar))
   string?)
  (tags pure)
  (spec-values
   (grammar
    ("'infix"
     "infix or separator grammar: insert the delimiter between list elements. An empty list will produce an empty string -- note, however, that parsing an empty string with an infix or separator grammar is ambiguous. Is it an empty list, or a list of one element, the empty string?")
    ("'strict-infix"
     "same as 'infix, but will raise an error if given an empty list.")
    ("'suffix"
     "suffix or terminator grammar: insert the delimiter after every list element. This grammar has no ambiguities.")
    ("'prefix"
     "prefix grammar: insert the delimiter before every list element. This grammar has no ambiguities."))))
 ((name . "string-ref/cursor")
  (signature lambda ((string? s) ((or integer? string-cursor?) cursor)) char?)
  (tags pure))
 ((name . "substring/cursor")
  (signature
   lambda
   ((string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (tags pure))
 ((name . "string-copy/cursors")
  (signature lambda ((string? s)) string?)
  (tags pure))
 ((name . "string-copy/cursors")
  (signature lambda ((string? s) ((or integer? string-cursor?) start)) string?)
  (tags pure))
 ((name . "string-copy/cursors")
  (signature
   lambda
   ((string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (tags pure))
 ((name . "string-take")
  (signature lambda ((string? s) (integer? nchars)) string?)
  (tags pure))
 ((name . "string-drop")
  (signature lambda ((string? s) (integer? nchars)) string?)
  (tags pure))
 ((name . "string-take-right")
  (signature lambda ((string? s) (integer? nchars)) string?)
  (tags pure))
 ((name . "string-drop-right")
  (signature lambda ((string? s) (integer? nchars)) string?)
  (tags pure))
 ((name . "string-pad")
  (signature lambda ((string? s) (integer? len)) string?)
  (tags pure))
 ((name . "string-pad")
  (signature lambda ((string? s) (integer? len) (char? char)) string?)
  (tags pure))
 ((name . "string-pad")
  (signature
   lambda
   ((string? s)
    (integer? len)
    (char? char)
    ((or integer? string-cursor?) start))
   string?)
  (tags pure))
 ((name . "string-pad")
  (signature
   lambda
   ((string? s)
    (integer? len)
    (char? char)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (tags pure))
 ((name . "string-pad-right")
  (signature lambda ((string? s) (integer? len)) string?)
  (tags pure))
 ((name . "string-pad-right")
  (signature lambda ((string? s) (integer? len) (char? char)) string?)
  (tags pure))
 ((name . "string-pad-right")
  (signature
   lambda
   ((string? s)
    (integer? len)
    (char? char)
    ((or integer? string-cursor?) start))
   string?)
  (tags pure))
 ((name . "string-pad-right")
  (signature
   lambda
   ((string? s)
    (integer? len)
    (char? char)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (tags pure))
 ((name . "string-trim") (signature lambda ((string? s)) string?) (tags pure))
 ((name . "string-trim")
  (signature lambda ((string? s) (procedure? pred)) string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim-right")
  (signature lambda ((string? s)) string?)
  (tags pure))
 ((name . "string-trim-right")
  (signature lambda ((string? s) (procedure? pred)) string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim-right")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim-right")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim-both")
  (signature lambda ((string? s)) string?)
  (tags pure))
 ((name . "string-trim-both")
  (signature lambda ((string? s) (procedure? pred)) string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim-both")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-trim-both")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-prefix-length")
  (signature lambda ((string? s1) (string? s2)) integer?)
  (tags pure))
 ((name . "string-prefix-length")
  (signature
   lambda
   ((string? s1) (string? s2) ((or integer? string-cursor?) start1))
   integer?)
  (tags pure))
 ((name . "string-prefix-length")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1))
   integer?)
  (tags pure))
 ((name . "string-prefix-length")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2))
   integer?)
  (tags pure))
 ((name . "string-prefix-length")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2)
    ((or integer? string-cursor?) end2))
   integer?)
  (tags pure))
 ((name . "string-suffix-length")
  (signature lambda ((string? s1) (string? s2)) integer?)
  (tags pure))
 ((name . "string-suffix-length")
  (signature
   lambda
   ((string? s1) (string? s2) ((or integer? string-cursor?) start1))
   integer?)
  (tags pure))
 ((name . "string-suffix-length")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1))
   integer?)
  (tags pure))
 ((name . "string-suffix-length")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2))
   integer?)
  (tags pure))
 ((name . "string-suffix-length")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2)
    ((or integer? string-cursor?) end2))
   integer?)
  (tags pure))
 ((name . "string-prefix?")
  (signature lambda ((string? s1) (string? s2)) boolean?)
  (tags pure))
 ((name . "string-prefix?")
  (signature
   lambda
   ((string? s1) (string? s2) ((or integer? string-cursor?) start1))
   boolean?)
  (tags pure))
 ((name . "string-prefix?")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1))
   boolean?)
  (tags pure))
 ((name . "string-prefix?")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2))
   boolean?)
  (tags pure))
 ((name . "string-prefix?")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2)
    ((or integer? string-cursor?) end2))
   boolean?)
  (tags pure))
 ((name . "string-suffix?")
  (signature lambda ((string? s1) (string? s2)) boolean?)
  (tags pure))
 ((name . "string-suffix?")
  (signature
   lambda
   ((string? s1) (string? s2) ((or integer? string-cursor?) start1))
   boolean?)
  (tags pure))
 ((name . "string-suffix?")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1))
   boolean?)
  (tags pure))
 ((name . "string-suffix?")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2))
   boolean?)
  (tags pure))
 ((name . "string-suffix?")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2)
    ((or integer? string-cursor?) end2))
   boolean?)
  (tags pure))
 ((name . "string-index")
  (signature lambda ((string? s) (procedure? pred)) string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-index")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-index")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-index-right")
  (signature lambda ((string? s) (procedure? pred)) string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-index-right")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-index-right")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-skip")
  (signature lambda ((string? s) (procedure? pred)) string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-skip")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-skip")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-skip-right")
  (signature lambda ((string? s) (procedure? pred)) string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-skip-right")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-skip-right")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string-cursor?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-contains")
  (signature lambda ((string? s1) (string? s2)) (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains")
  (signature
   lambda
   ((string? s1) (string? s2) ((or integer? string-cursor?) start1))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2)
    ((or integer? string-cursor?) end2))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains-right")
  (signature lambda ((string? s1) (string? s2)) (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains-right")
  (signature
   lambda
   ((string? s1) (string? s2) ((or integer? string-cursor?) start1))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains-right")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains-right")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-contains-right")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2)
    ((or integer? string-cursor?) end2))
   (or #f string-cursor?))
  (tags pure))
 ((name . "string-reverse")
  (signature lambda ((string? s)) string?)
  (tags pure))
 ((name . "string-reverse")
  (signature lambda ((string? s) ((or integer? string-cursor?) start)) string?)
  (tags pure))
 ((name . "string-reverse")
  (signature
   lambda
   ((string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (tags pure))
 ((name . "string-concatenate")
  (signature lambda ((list? string-list)) string?)
  (tags pure))
 ((name . "string-concatenate-reverse")
  (signature lambda ((list? string-list)) string?)
  (tags pure))
 ((name . "string-concatenate-reverse")
  (signature lambda ((list? string-list) (string? final-string)) string?)
  (tags pure))
 ((name . "string-concatenate-reverse")
  (signature
   lambda
   ((list? string-list)
    (string? final-string)
    ((or integer? string-cursor?) end))
   string?)
  (tags pure))
 ((name . "string-fold")
  (signature lambda ((procedure? kons) knil (string? s)) *)
  (subsigs (kons (lambda ((char? c) state) *)))
  (tags pure))
 ((name . "string-fold")
  (signature
   lambda
   ((procedure? kons) knil (string? s) ((or integer? string-cursor?) start))
   *)
  (subsigs (kons (lambda ((char? c) state) *)))
  (tags pure))
 ((name . "string-fold")
  (signature
   lambda
   ((procedure? kons)
    knil
    (string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   *)
  (subsigs (kons (lambda ((char? c) state) *)))
  (tags pure))
 ((name . "string-fold-right")
  (signature lambda ((procedure? kons) knil (string? s)) *)
  (subsigs (kons (lambda ((char? c) state) *)))
  (tags pure))
 ((name . "string-fold-right")
  (signature
   lambda
   ((procedure? kons) knil (string? s) ((or integer? string-cursor?) start))
   *)
  (subsigs (kons (lambda ((char? c) state) *)))
  (tags pure))
 ((name . "string-fold-right")
  (signature
   lambda
   ((procedure? kons)
    knil
    (string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   *)
  (subsigs (kons (lambda ((char? c) state) *)))
  (tags pure))
 ((name . "string-for-each-cursor")
  (signature lambda ((procedure? proc) (string? s)) undefined)
  (subsigs (proc (lambda ((string-cursor? cursor)) undefined))))
 ((name . "string-for-each-cursor")
  (signature
   lambda
   ((procedure? proc) (string? s) ((or integer? string-cursor?) start))
   undefined)
  (subsigs (proc (lambda ((string-cursor? cursor)) undefined))))
 ((name . "string-for-each-cursor")
  (signature
   lambda
   ((procedure? proc)
    (string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   undefined)
  (subsigs (proc (lambda ((string-cursor? cursor)) undefined))))
 ((name . "string-replicate")
  (signature lambda ((string? s) (integer? from) (integer? to)) string?)
  (tags pure))
 ((name . "string-replicate")
  (signature
   lambda
   ((string? s)
    (integer? from)
    (integer? to)
    ((or integer? string-cursor?) start))
   string?)
  (tags pure))
 ((name . "string-replicate")
  (signature
   lambda
   ((string? s)
    (integer? from)
    (integer? to)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (tags pure))
 ((name . "string-count")
  (signature lambda ((string? s) (procedure? pred)) integer?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-count")
  (signature
   lambda
   ((string? s) (procedure? pred) ((or integer? string-cursor?) start))
   integer?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-count")
  (signature
   lambda
   ((string? s)
    (procedure? pred)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   integer?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-replace")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1))
   string?)
  (tags pure))
 ((name . "string-replace")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2))
   string?)
  (tags pure))
 ((name . "string-replace")
  (signature
   lambda
   ((string? s1)
    (string? s2)
    ((or integer? string-cursor?) start1)
    ((or integer? string-cursor?) end1)
    ((or integer? string-cursor?) start2)
    ((or integer? string-cursor?) end2))
   string?)
  (tags pure))
 ((name . "string-split")
  (signature lambda ((string? s) (string? delimiter)) list?)
  (tags pure))
 ((name . "string-split")
  (signature lambda ((string? s) (string? delimiter) (symbol? grammar)) list?)
  (tags pure)
  (spec-values
   (grammar
    ("'infix" "empty string produces empty list")
    ("'strict-infix" "empty string signals an error")
    ("'suffix" "leading empty string is suppressed")
    ("'prefix" "trailing empty string is suppressed"))))
 ((name . "string-split")
  (signature
   lambda
   ((string? s) (string? delimiter) (symbol? grammar) ((or integer? #f) limit))
   list?)
  (tags pure)
  (spec-values
   (grammar
    ("'infix" "empty string produces empty list")
    ("'strict-infix" "empty string signals an error")
    ("'suffix" "leading empty string is suppressed")
    ("'prefix" "trailing empty string is suppressed"))))
 ((name . "string-split")
  (signature
   lambda
   ((string? s)
    (string? delimiter)
    (symbol? grammar)
    ((or integer? #f) limit)
    ((or integer? string-cursor?) start))
   list?)
  (tags pure)
  (spec-values
   (grammar
    ("'infix" "empty string produces empty list")
    ("'strict-infix" "empty string signals an error")
    ("'suffix" "leading empty string is suppressed")
    ("'prefix" "trailing empty string is suppressed"))))
 ((name . "string-split")
  (signature
   lambda
   ((string? s)
    (string? delimiter)
    (symbol? grammar)
    ((or integer? #f) limit)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   list?)
  (tags pure)
  (spec-values
   (grammar
    ("'infix" "empty string produces empty list")
    ("'strict-infix" "empty string signals an error")
    ("'suffix" "leading empty string is suppressed")
    ("'prefix" "trailing empty string is suppressed"))))
 ((name . "string-filter")
  (signature lambda ((procedure? pred) (string? s)) string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-filter")
  (signature
   lambda
   ((procedure? pred) (string? s) ((or integer? string-cursor?) start))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-filter")
  (signature
   lambda
   ((procedure? pred)
    (string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-remove")
  (signature lambda ((procedure? pred) (string? s)) string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-remove")
  (signature
   lambda
   ((procedure? pred) (string? s) ((or integer? string-cursor?) start))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "string-remove")
  (signature
   lambda
   ((procedure? pred)
    (string? s)
    ((or integer? string-cursor?) start)
    ((or integer? string-cursor?) end))
   string?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure)))
