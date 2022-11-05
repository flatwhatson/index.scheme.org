(((name . "make-f32vector")
  (signature
   case-lambda
   (((integer? size)) f32vector?)
   (((integer? size) (f32? fill)) f32vector?))
  (tags pure))
 ((name . "f32vector")
  (signature lambda ((f32? value) ...) f32vector?)
  (tags pure))
 ((name . "f32?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes real?))
 ((name . "f32vector?")
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . "f32vector-ref")
  (signature lambda ((f32vector? vec) (integer? i)) f32?)
  (tags pure))
 ((name . "f32vector-length")
  (signature lambda ((f32vector? vec)) integer?)
  (tags pure))
 ((name . "f32vector-set!")
  (signature lambda ((f32vector? vec) (integer? i) (f32? value)) undefined))
 ((name . "f32vector->list")
  (signature
   case-lambda
   (((f32vector? vec)) list?)
   (((f32vector? vec) (integer? start)) list?)
   (((f32vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "list->f32vector")
  (signature lambda ((list? proper-list)) f32vector?)
  (tags pure))
 ((name . "f32vector-unfold")
  (signature
   case-lambda
   (((procedure? f) (integer? length) seed) f32vector?)
   (((procedure? f) (integer? length) seed) f32vector?))
  (subsigs (f (lambda ((integer? index) state) (values f32? *))))
  (tags pure))
 ((name . "f32vector-copy")
  (signature
   case-lambda
   (((f32vector? vec)) f32vector?)
   (((f32vector? vec) (integer? start)) f32vector?)
   (((f32vector? vec) (integer? start) (integer? end)) f32vector?))
  (tags pure))
 ((name . "f32vector-reverse-copy")
  (signature
   case-lambda
   (((f32vector? vec)) f32vector?)
   (((f32vector? vec) (integer? start)) f32vector?)
   (((f32vector? vec) (integer? start) (integer? end)) f32vector?))
  (tags pure))
 ((name . "f32vector-append")
  (signature lambda ((f32vector? vec) ...) f32vector?)
  (tags pure))
 ((name . "f32vector-concatenate")
  (signature lambda ((list? list-of-f32vectors)) f32vector?)
  (tags pure))
 ((name . "f32vector-append-subvectors")
  (signature
   lambda
   ((f32vector? vec1) (integer? start1) (integer? start2) ...)
   f32vector?)
  (tags pure))
 ((name . "f32vector-empty?")
  (signature lambda ((f32vector? vec)) boolean?)
  (tags pure))
 ((name . "f32vector=")
  (signature lambda ((f32vector? vec) ...) boolean?)
  (tags pure))
 ((name . "f32vector-take")
  (signature lambda ((f32vector? vec) (integer? n)) f32vector?)
  (tags pure))
 ((name . "f32vector-take-right")
  (signature lambda ((f32vector? vec) (integer? n)) f32vector?)
  (tags pure))
 ((name . "f32vector-drop")
  (signature lambda ((f32vector? vec) (integer? n)) f32vector?)
  (tags pure))
 ((name . "f32vector-drop-right")
  (signature lambda ((f32vector? vec) (integer? n)) f32vector?)
  (tags pure))
 ((name . "f32vector-segment")
  (signature lambda ((f32vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . "f32vector-fold")
  (signature
   lambda
   ((procedure? kons) knil (f32vector? vec1) (f32vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-fold-right")
  (signature
   lambda
   ((procedure? kons) knil (f32vector? vec1) (f32vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-map")
  (signature
   lambda
   ((procedure? proc) (f32vector? vector1) (f32vector? vector2) ...)
   vector?)
  (subsigs (proc (lambda (obj ...) *)))
  (tags pure))
 ((name . "f32vector-map!")
  (signature
   lambda
   ((procedure? proc) (f32vector? vector1) (f32vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . "f32vector-for-each")
  (signature
   lambda
   ((procedure? proc) (f32vector? vector1) (f32vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . "f32vector-count")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec1) (f32vector? vec2) ...)
   integer?)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-cumulate")
  (signature lambda ((procedure? f) knil (f32vector? vec)) f32vector?)
  (subsigs (f (lambda (obj1 obj2) *)))
  (tags pure))
 ((name . "f32vector-take-while")
  (signature lambda ((procedure? pred?) (f32vector? vec)) f32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f32vector-take-while-right")
  (signature lambda ((procedure? pred?) (f32vector? vec)) f32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f32vector-drop-while")
  (signature lambda ((procedure? pred?) (f32vector? vec)) f32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f32vector-drop-while-right")
  (signature lambda ((procedure? pred?) (f32vector? vec)) f32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f32vector-index")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec1) (f32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-index-right")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec1) (f32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-skip")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec1) (f32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-skip-right")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec1) (f32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-any")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec1) (f32vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-every")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec1) (f32vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "f32vector-partition")
  (signature
   lambda
   ((procedure? pred?) (f32vector? vec))
   (values f32vector? integer?))
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f32vector-filter")
  (signature lambda ((procedure? pred?) (f32vector? vec1)) f32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f32vector-remove")
  (signature lambda ((procedure? pred?) (f32vector? vec1)) f32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "f32vector-swap!")
  (signature
   lambda
   ((f32vector? f32vector) (integer? i) (integer? j))
   undefined))
 ((name . "f32vector-fill!")
  (signature
   case-lambda
   (((f32vector? f32vector) (f32? fill)) undefined)
   (((f32vector? f32vector) (f32? fill) (integer? start)) undefined)
   (((f32vector? f32vector) (f32? fill) (integer? start) (integer? end))
    undefined)))
 ((name . "f32vector-reverse!")
  (signature
   case-lambda
   (((f32vector? f32vector)) undefined)
   (((f32vector? f32vector) (integer? start)) undefined)
   (((f32vector? f32vector) (integer? start) (integer? end)) undefined)))
 ((name . "f32vector-copy!")
  (signature
   case-lambda
   (((f32vector? to) (integer? at) (f32vector? from)) undefined)
   (((f32vector? to) (integer? at) (f32vector? from) (integer? start))
    undefined)
   (((f32vector? to)
     (integer? at)
     (f32vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "f32vector-reverse-copy!")
  (signature
   case-lambda
   (((f32vector? to) (integer? at) (f32vector? from)) undefined)
   (((f32vector? to) (integer? at) (f32vector? from) (integer? start))
    undefined)
   (((f32vector? to)
     (integer? at)
     (f32vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "f32vector-unfold!")
  (signature
   lambda
   ((procedure? f)
    (f32vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "f32vector-unfold-right!")
  (signature
   lambda
   ((procedure? f)
    (f32vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "reverse-f32vector->list")
  (signature
   case-lambda
   (((f32vector? vec)) list?)
   (((f32vector? vec) (integer? start)) list?)
   (((f32vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "reverse-list->f32vector")
  (signature lambda ((list? proper-list)) f32vector?)
  (tags pure))
 ((name . "f32vector->vector")
  (signature
   case-lambda
   (((f32vector? vec)) vector?)
   (((f32vector? vec) (integer? start)) vector?)
   (((f32vector? vec) (integer? start) (integer? end)) vector?))
  (tags pure))
 ((name . "vector->f32vector")
  (signature
   case-lambda
   (((vector? vec)) f32vector?)
   (((vector? vec) (integer? start)) f32vector?)
   (((vector? vec) (integer? start) (integer? end)) f32vector?))
  (tags pure))
 ((name . "make-f32vector-generator")
  (signature lambda ((f32vector? vec)) procedure?)
  (subsigs (return (lambda () (or eof-object? f32?)))))
 ((name . "f32vector-comparator") (signature value comparator?))
 ((name . "write-f32vector")
  (signature
   case-lambda
   (((f32vector vec)) undefined)
   (((f32vector vec) (output-port? port)) undefined))))
