(((name . "make-f64vector")
  (signature
   case-lambda
   (((integer? size)) f64vector?)
   (((integer? size) (f64? fill)) f64vector?))
  (tags pure))
 ((name . "f64vector")
  (signature lambda ((f64? value) ...) f64vector?)
  (tags pure))
 ((name . "f64?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes real?))
 ((name . "f64vector?")
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . "f64vector-ref")
  (signature lambda ((f64vector? vec) (integer? i)) f64?)
  (tags pure))
 ((name . "f64vector-length")
  (signature lambda ((f64vector? vec)) integer?)
  (tags pure))
 ((name . "f64vector-set!")
  (signature lambda ((f64vector? vec) (integer? i) (f64? value)) undefined))
 ((name . "f64vector->list")
  (signature
   case-lambda
   (((f64vector? vec)) list?)
   (((f64vector? vec) (integer? start)) list?)
   (((f64vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "list->f64vector")
  (signature lambda ((list? proper-list)) f64vector?)
  (tags pure))
 ((name . "f64vector-unfold")
  (signature
   case-lambda
   (((procedure? f) (integer? length) seed) f64vector?)
   (((procedure? f) (integer? length) seed) f64vector?))
  (subsigs (f (lambda ((integer? index) state) (values f64? *))))
  (tags pure))
 ((name . "f64vector-copy")
  (signature
   case-lambda
   (((f64vector? vec)) f64vector?)
   (((f64vector? vec) (integer? start)) f64vector?)
   (((f64vector? vec) (integer? start) (integer? end)) f64vector?))
  (tags pure))
 ((name . "f64vector-reverse-copy")
  (signature
   case-lambda
   (((f64vector? vec)) f64vector?)
   (((f64vector? vec) (integer? start)) f64vector?)
   (((f64vector? vec) (integer? start) (integer? end)) f64vector?))
  (tags pure))
 ((name . "f64vector-append")
  (signature lambda ((f64vector? vec) ...) f64vector?)
  (tags pure))
 ((name . "f64vector-concatenate")
  (signature lambda ((list? list-of-f64vectors)) f64vector?)
  (tags pure))
 ((name . "f64vector-append-subvectors")
  (signature
   lambda
   ((f64vector? vec1) (integer? start1) (integer? start2) ...)
   f64vector?)
  (tags pure))
 ((name . "f64vector-empty?")
  (signature lambda ((f64vector? vec)) boolean?)
  (tags pure))
 ((name . "f64vector=")
  (signature lambda ((f64vector? vec) ...) boolean?)
  (tags pure))
 ((name . "f64vector-take")
  (signature lambda ((f64vector? vec) (integer? n)) f64vector?)
  (tags pure))
 ((name . "f64vector-take-right")
  (signature lambda ((f64vector? vec) (integer? n)) f64vector?)
  (tags pure))
 ((name . "f64vector-drop")
  (signature lambda ((f64vector? vec) (integer? n)) f64vector?)
  (tags pure))
 ((name . "f64vector-drop-right")
  (signature lambda ((f64vector? vec) (integer? n)) f64vector?)
  (tags pure))
 ((name . "f64vector-segment")
  (signature lambda ((f64vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . "f64vector-fold")
  (signature
   lambda
   ((procedure? kons) knil (f64vector? vec1) (f64vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-fold-right")
  (signature
   lambda
   ((procedure? kons) knil (f64vector? vec1) (f64vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-map")
  (signature
   lambda
   ((procedure? proc) (f64vector? vector1) (f64vector? vector2) ...)
   vector?)
  (subsigs (proc (lambda (obj ...) *)))
  (tags pure))
 ((name . "f64vector-map!")
  (signature
   lambda
   ((procedure? proc) (f64vector? vector1) (f64vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . "f64vector-for-each")
  (signature
   lambda
   ((procedure? proc) (f64vector? vector1) (f64vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . "f64vector-count")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec1) (f64vector? vec2) ...)
   integer?)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-cumulate")
  (signature lambda ((procedure? f) knil (f64vector? vec)) f64vector?)
  (subsigs (f (lambda (obj1 obj2) *)))
  (tags pure))
 ((name . "f64vector-take-while")
  (signature lambda ((procedure? pred?) (f64vector? vec)) f64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f64vector-take-while-right")
  (signature lambda ((procedure? pred?) (f64vector? vec)) f64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f64vector-drop-while")
  (signature lambda ((procedure? pred?) (f64vector? vec)) f64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f64vector-drop-while-right")
  (signature lambda ((procedure? pred?) (f64vector? vec)) f64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f64vector-index")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec1) (f64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-index-right")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec1) (f64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-skip")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec1) (f64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-skip-right")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec1) (f64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-any")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec1) (f64vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-every")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec1) (f64vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f64vector-partition")
  (signature
   lambda
   ((procedure? pred?) (f64vector? vec))
   (values f64vector? integer?))
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f64vector-filter")
  (signature lambda ((procedure? pred?) (f64vector? vec1)) f64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f64vector-remove")
  (signature lambda ((procedure? pred?) (f64vector? vec1)) f64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f64vector-swap!")
  (signature
   lambda
   ((f64vector? f64vector) (integer? i) (integer? j))
   undefined))
 ((name . "f64vector-fill!")
  (signature
   case-lambda
   (((f64vector? f64vector) (f64? fill)) undefined)
   (((f64vector? f64vector) (f64? fill) (integer? start)) undefined)
   (((f64vector? f64vector) (f64? fill) (integer? start) (integer? end))
    undefined)))
 ((name . "f64vector-reverse!")
  (signature
   case-lambda
   (((f64vector? f64vector)) undefined)
   (((f64vector? f64vector) (integer? start)) undefined)
   (((f64vector? f64vector) (integer? start) (integer? end)) undefined)))
 ((name . "f64vector-copy!")
  (signature
   case-lambda
   (((f64vector? to) (integer? at) (f64vector? from)) undefined)
   (((f64vector? to) (integer? at) (f64vector? from) (integer? start))
    undefined)
   (((f64vector? to)
     (integer? at)
     (f64vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "f64vector-reverse-copy!")
  (signature
   case-lambda
   (((f64vector? to) (integer? at) (f64vector? from)) undefined)
   (((f64vector? to) (integer? at) (f64vector? from) (integer? start))
    undefined)
   (((f64vector? to)
     (integer? at)
     (f64vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "f64vector-unfold!")
  (signature
   lambda
   ((procedure? f)
    (f64vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "f64vector-unfold-right!")
  (signature
   lambda
   ((procedure? f)
    (f64vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "reverse-f64vector->list")
  (signature
   case-lambda
   (((f64vector? vec)) list?)
   (((f64vector? vec) (integer? start)) list?)
   (((f64vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "reverse-list->f64vector")
  (signature lambda ((list? proper-list)) f64vector?)
  (tags pure))
 ((name . "f64vector->vector")
  (signature
   case-lambda
   (((f64vector? vec)) vector?)
   (((f64vector? vec) (integer? start)) vector?)
   (((f64vector? vec) (integer? start) (integer? end)) vector?))
  (tags pure))
 ((name . "vector->f64vector")
  (signature
   case-lambda
   (((vector? vec)) f64vector?)
   (((vector? vec) (integer? start)) f64vector?)
   (((vector? vec) (integer? start) (integer? end)) f64vector?))
  (tags pure))
 ((name . "make-f64vector-generator")
  (signature lambda ((f64vector? vec)) procedure?)
  (subsigs (return (lambda () (or eof-object? f64?)))))
 ((name . "f64vector-comparator") (signature value comparator?))
 ((name . "write-f64vector")
  (signature
   case-lambda
   (((f64vector vec)) undefined)
   (((f64vector vec) (output-port? port)) undefined))))
