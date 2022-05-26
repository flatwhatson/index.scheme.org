(
 ;; procedures before break get copied to (scheme vector base)
 ((name . make-s64vector)
  (signature lambda ((integer? size)) s64vector?))
 ((name . make-s64vector)
  (signature lambda ((integer? size) (s64? size)) s64vector?)
  (tags pure))
 ((name . s64vector)
  (signature lambda ((s64? value) ...) s64vector?)
  (tags pure))
 ((name . s64?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . s64vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . s64vector-ref)
  (signature lambda ((s64vector? vec) (integer? i)) s64?)
  (tags pure))
 ((name . s64vector-length)
  (signature lambda ((s64vector? vec)) integer?)
  (tags pure))
 ((name . s64vector-set!)
  (signature lambda ((s64vector? vec) (integer? i) (s64? value)) undefined))
 ((name . s64vector->list)
  (signature lambda ((s64vector? vec)) list?)
  (tags pure))
 ((name . s64vector->list)
  (signature lambda ((s64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . s64vector->list)
  (signature lambda ((s64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->s64vector)
  (signature lambda ((list? proper-list)) s64vector?)
  (tags pure))

 ((name . s64vector-unfold)
  (signature lambda ((procedure? f) (integer? length) seed) s64vector?)
  (subsigs
    (f (lambda ((integer? index) state) (values s64? *))))
  (tags pure))
 ((name . s64vector-unfold)
  (signature lambda ((procedure? f) (integer? length) seed) s64vector?)
  (subsigs
    (f (lambda ((integer? index) state) (values s64? *))))
  (tags pure))
 ((name . s64vector-copy)
  (signature lambda ((s64vector? vec)) s64vector?)
  (tags pure))
 ((name . s64vector-copy)
  (signature lambda ((s64vector? vec) (integer? start)) s64vector?)
  (tags pure))
 ((name . s64vector-copy)
  (signature lambda ((s64vector? vec) (integer? start) (integer? end)) s64vector?)
  (tags pure))
 ((name . s64vector-reverse-copy)
  (signature lambda ((s64vector? vec)) s64vector?)
  (tags pure))
 ((name . s64vector-reverse-copy)
  (signature lambda ((s64vector? vec) (integer? start)) s64vector?)
  (tags pure))
 ((name . s64vector-reverse-copy)
  (signature lambda ((s64vector? vec) (integer? start) (integer? end)) s64vector?)
  (tags pure))
 ((name . s64vector-append)
  (signature lambda ((s64vector? vec) ...) s64vector?)
  (tags pure))
 ((name . s64vector-concatenate)
  (signature lambda ((list? list-of-s64vectors)) s64vector?)
  (tags pure))
 ((name . s64vector-append-subvectors)
  (signature lambda ((s64vector? vec1) (integer? start1) (integer? start2) ...) s64vector?)
  (tags pure))
 ((name . s64vector-empty?)
  (signature lambda ((s64vector? vec)) boolean?)
  (tags pure))
 ((name . s64vector=)
  (signature lambda ((s64vector? vec) ...) boolean?)
  (tags pure))
 ((name . s64vector-take)
  (signature lambda ((s64vector? vec) (integer? n)) s64vector?)
  (tags pure))
 ((name . s64vector-take-right)
  (signature lambda ((s64vector? vec) (integer? n)) s64vector?)
  (tags pure))
 ((name . s64vector-drop)
  (signature lambda ((s64vector? vec) (integer? n)) s64vector?)
  (tags pure))
 ((name . s64vector-drop-right)
  (signature lambda ((s64vector? vec) (integer? n)) s64vector?)
  (tags pure))
 ((name . s64vector-segment)
  (signature lambda ((s64vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . s64vector-fold)
  (signature
   lambda
   ((procedure? kons) knil (s64vector? vec1) (s64vector? vec2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (state obj1 obj2 ...) *))))
 ((name . s64vector-fold-right)
  (signature
   lambda
   ((procedure? kons) knil (s64vector? vec1) (s64vector? vec2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (state obj1 obj2 ...) *))))
 ((name . s64vector-map)
  (signature
   lambda
   ((procedure? proc) (s64vector? vector1) (s64vector? vector2) ...)
   vector?)
  (tags pure)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . s64vector-map!)
  (signature
   lambda
   ((procedure? proc) (s64vector? vector1) (s64vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . s64vector-for-each)
  (signature
   lambda
   ((procedure? proc) (s64vector? vector1) (s64vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . s64vector-count)
  (signature
   lambda
   ((procedure? pred?) (s64vector? vec1) (s64vector? vec2) ...)
   integer?)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . s64vector-cumulate)
  (signature lambda ((procedure? f) knil (s64vector? vec)) s64vector?)
  (tags pure)
  (subsigs (f (lambda (obj1 obj2) *))))
 ((name . s64vector-take-while)
  (signature lambda ((procedure? pred?) (s64vector? vec)) s64vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . s64vector-take-while-right)
  (signature lambda ((procedure? pred?) (s64vector? vec)) s64vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . s64vector-drop-while)
  (signature lambda ((procedure? pred?) (s64vector? vec)) s64vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . s64vector-drop-while-right)
  (signature lambda ((procedure? pred?) (s64vector? vec)) s64vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . s64vector-index)
  (signature
   lambda
   ((procedure? pred?) (s64vector? vec1) (s64vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . s64vector-index-right)
  (signature
   lambda
   ((procedure? pred?) (s64vector? vec1) (s64vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . s64vector-skip)
  (signature
   lambda
   ((procedure? pred?) (s64vector? vec1) (s64vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . s64vector-skip-right)
  (signature
   lambda
   ((procedure? pred?) (s64vector? vec1) (s64vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . s64vector-any)
  (signature lambda ((procedure? pred?) (s64vector? vec1) (s64vector? vec2) ...) *)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . s64vector-every)
  (signature lambda ((procedure? pred?) (s64vector? vec1) (s64vector? vec2) ...) *)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . s64vector-partition)
  (signature
   lambda
   ((procedure? pred?) (s64vector? vec))
   (values s64vector? integer?))
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . s64vector-filter)
  (signature lambda ((procedure? pred?) (s64vector? vec1)) s64vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . s64vector-remove)
  (signature lambda ((procedure? pred?) (s64vector? vec1)) s64vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . s64vector-swap!)
  (signature lambda ((s64vector? s64vector) (integer? i) (integer? j)) undefined))
 ((name . s64vector-fill!) (signature lambda ((s64vector? s64vector) (s64? fill)) undefined))
 ((name . s64vector-fill!)
  (signature lambda ((s64vector? s64vector) (s64? fill) (integer? start)) undefined))
 ((name . s64vector-fill!)
  (signature
   lambda
   ((s64vector? s64vector) (s64? fill) (integer? start) (integer? end))
   undefined))
 ((name . s64vector-reverse!) (signature lambda ((s64vector? s64vector)) undefined))
 ((name . s64vector-reverse!)
  (signature lambda ((s64vector? s64vector) (integer? start)) undefined))
 ((name . s64vector-reverse!)
  (signature
   lambda
   ((s64vector? s64vector) (integer? start) (integer? end))
   undefined))
 ((name . s64vector-copy!)
  (signature lambda ((s64vector? to) (integer? at) (s64vector? from)) undefined))
 ((name . s64vector-copy!)
  (signature
   lambda
   ((s64vector? to) (integer? at) (s64vector? from) (integer? start))
   undefined))
 ((name . s64vector-copy!)
  (signature
   lambda
   ((s64vector? to) (integer? at) (s64vector? from) (integer? start) (integer? end))
   undefined))
 ((name . s64vector-reverse-copy!)
  (signature lambda ((s64vector? to) (integer? at) (s64vector? from)) undefined))
 ((name . s64vector-reverse-copy!)
  (signature
   lambda
   ((s64vector? to) (integer? at) (s64vector? from) (integer? start))
   undefined))
 ((name . s64vector-reverse-copy!)
  (signature
   lambda
   ((s64vector? to) (integer? at) (s64vector? from) (integer? start) (integer? end))
   undefined))
 ((name . s64vector-unfold!)
  (signature
   lambda
   ((procedure? f)
    (s64vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . s64vector-unfold-right!)
  (signature
   lambda
   ((procedure? f)
    (s64vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . reverse-s64vector->list)
  (signature lambda ((s64vector? vec)) list?)
  (tags pure))
 ((name . reverse-s64vector->list)
  (signature lambda ((s64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . reverse-s64vector->list)
  (signature lambda ((s64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . reverse-list->s64vector)
  (signature lambda ((list? proper-list)) s64vector?)
  (tags pure))
 ((name . s64vector->vector)
  (signature lambda ((s64vector? vec)) vector?)
  (tags pure))
 ((name . s64vector->vector)
  (signature lambda ((s64vector? vec) (integer? start)) vector?)
  (tags pure))
 ((name . s64vector->vector)
  (signature lambda ((s64vector? vec) (integer? start) (integer? end)) vector?)
  (tags pure))
 ((name . vector->s64vector)
  (signature lambda ((vector? vec)) s64vector?)
  (tags pure))
 ((name . vector->s64vector)
  (signature lambda ((vector? vec) (integer? start)) s64vector?)
  (tags pure))
 ((name . vector->s64vector)
  (signature lambda ((vector? vec) (integer? start) (integer? end)) s64vector?)
  (tags pure))
 ((name . make-s64vector-generator)
  (signature lambda ((s64vector? vec)) procedure?)
  (subsigs
    (return (lambda () (or eof-object? s64?)))))
 ((name . s64vector-comparator)
  (signature value comparator?))
 ((name . write-s64vector)
  (signature lambda ((s64vector vec)) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-s64vector)
  (signature lambda ((s64vector vec) (output-port? port)) undefined)))
