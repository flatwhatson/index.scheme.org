(((name . "make-s32vector")
  (signature
   case-lambda
   (((integer? size)) s32vector?)
   (((integer? size) (s32? fill)) s32vector?))
  (tags pure))
 ((name . "s32vector")
  (signature lambda ((s32? value) ...) s32vector?)
  (tags pure))
 ((name . "s32?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . "s32vector?")
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . "s32vector-ref")
  (signature lambda ((s32vector? vec) (integer? i)) s32?)
  (tags pure))
 ((name . "s32vector-length")
  (signature lambda ((s32vector? vec)) integer?)
  (tags pure))
 ((name . "s32vector-set!")
  (signature lambda ((s32vector? vec) (integer? i) (s32? value)) undefined))
 ((name . "s32vector->list")
  (signature
   case-lambda
   (((s32vector? vec)) list?)
   (((s32vector? vec) (integer? start)) list?)
   (((s32vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "list->s32vector")
  (signature lambda ((list? proper-list)) s32vector?)
  (tags pure))
 ((name . "s32vector-unfold")
  (signature
   case-lambda
   (((procedure? f) (integer? length) seed) s32vector?)
   (((procedure? f) (integer? length) seed) s32vector?))
  (subsigs (f (lambda ((integer? index) state) (values s32? *))))
  (tags pure))
 ((name . "s32vector-copy")
  (signature
   case-lambda
   (((s32vector? vec)) s32vector?)
   (((s32vector? vec) (integer? start)) s32vector?)
   (((s32vector? vec) (integer? start) (integer? end)) s32vector?))
  (tags pure))
 ((name . "s32vector-reverse-copy")
  (signature
   case-lambda
   (((s32vector? vec)) s32vector?)
   (((s32vector? vec) (integer? start)) s32vector?)
   (((s32vector? vec) (integer? start) (integer? end)) s32vector?))
  (tags pure))
 ((name . "s32vector-append")
  (signature lambda ((s32vector? vec) ...) s32vector?)
  (tags pure))
 ((name . "s32vector-concatenate")
  (signature lambda ((list? list-of-s32vectors)) s32vector?)
  (tags pure))
 ((name . "s32vector-append-subvectors")
  (signature
   lambda
   ((s32vector? vec1) (integer? start1) (integer? start2) ...)
   s32vector?)
  (tags pure))
 ((name . "s32vector-empty?")
  (signature lambda ((s32vector? vec)) boolean?)
  (tags pure))
 ((name . "s32vector=")
  (signature lambda ((s32vector? vec) ...) boolean?)
  (tags pure))
 ((name . "s32vector-take")
  (signature lambda ((s32vector? vec) (integer? n)) s32vector?)
  (tags pure))
 ((name . "s32vector-take-right")
  (signature lambda ((s32vector? vec) (integer? n)) s32vector?)
  (tags pure))
 ((name . "s32vector-drop")
  (signature lambda ((s32vector? vec) (integer? n)) s32vector?)
  (tags pure))
 ((name . "s32vector-drop-right")
  (signature lambda ((s32vector? vec) (integer? n)) s32vector?)
  (tags pure))
 ((name . "s32vector-segment")
  (signature lambda ((s32vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . "s32vector-fold")
  (signature
   lambda
   ((procedure? kons) knil (s32vector? vec1) (s32vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-fold-right")
  (signature
   lambda
   ((procedure? kons) knil (s32vector? vec1) (s32vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-map")
  (signature
   lambda
   ((procedure? proc) (s32vector? vector1) (s32vector? vector2) ...)
   vector?)
  (subsigs (proc (lambda (obj ...) *)))
  (tags pure))
 ((name . "s32vector-map!")
  (signature
   lambda
   ((procedure? proc) (s32vector? vector1) (s32vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . "s32vector-for-each")
  (signature
   lambda
   ((procedure? proc) (s32vector? vector1) (s32vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . "s32vector-count")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec1) (s32vector? vec2) ...)
   integer?)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-cumulate")
  (signature lambda ((procedure? f) knil (s32vector? vec)) s32vector?)
  (subsigs (f (lambda (obj1 obj2) *)))
  (tags pure))
 ((name . "s32vector-take-while")
  (signature lambda ((procedure? pred?) (s32vector? vec)) s32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "s32vector-take-while-right")
  (signature lambda ((procedure? pred?) (s32vector? vec)) s32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "s32vector-drop-while")
  (signature lambda ((procedure? pred?) (s32vector? vec)) s32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "s32vector-drop-while-right")
  (signature lambda ((procedure? pred?) (s32vector? vec)) s32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "s32vector-index")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec1) (s32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-index-right")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec1) (s32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-skip")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec1) (s32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-skip-right")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec1) (s32vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-any")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec1) (s32vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-every")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec1) (s32vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "s32vector-partition")
  (signature
   lambda
   ((procedure? pred?) (s32vector? vec))
   (values s32vector? integer?))
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "s32vector-filter")
  (signature lambda ((procedure? pred?) (s32vector? vec1)) s32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "s32vector-remove")
  (signature lambda ((procedure? pred?) (s32vector? vec1)) s32vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "s32vector-swap!")
  (signature
   lambda
   ((s32vector? s32vector) (integer? i) (integer? j))
   undefined))
 ((name . "s32vector-fill!")
  (signature
   case-lambda
   (((s32vector? s32vector) (s32? fill)) undefined)
   (((s32vector? s32vector) (s32? fill) (integer? start)) undefined)
   (((s32vector? s32vector) (s32? fill) (integer? start) (integer? end))
    undefined)))
 ((name . "s32vector-reverse!")
  (signature
   case-lambda
   (((s32vector? s32vector)) undefined)
   (((s32vector? s32vector) (integer? start)) undefined)
   (((s32vector? s32vector) (integer? start) (integer? end)) undefined)))
 ((name . "s32vector-copy!")
  (signature
   case-lambda
   (((s32vector? to) (integer? at) (s32vector? from)) undefined)
   (((s32vector? to) (integer? at) (s32vector? from) (integer? start))
    undefined)
   (((s32vector? to)
     (integer? at)
     (s32vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "s32vector-reverse-copy!")
  (signature
   case-lambda
   (((s32vector? to) (integer? at) (s32vector? from)) undefined)
   (((s32vector? to) (integer? at) (s32vector? from) (integer? start))
    undefined)
   (((s32vector? to)
     (integer? at)
     (s32vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "s32vector-unfold!")
  (signature
   lambda
   ((procedure? f)
    (s32vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "s32vector-unfold-right!")
  (signature
   lambda
   ((procedure? f)
    (s32vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "reverse-s32vector->list")
  (signature
   case-lambda
   (((s32vector? vec)) list?)
   (((s32vector? vec) (integer? start)) list?)
   (((s32vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "reverse-list->s32vector")
  (signature lambda ((list? proper-list)) s32vector?)
  (tags pure))
 ((name . "s32vector->vector")
  (signature
   case-lambda
   (((s32vector? vec)) vector?)
   (((s32vector? vec) (integer? start)) vector?)
   (((s32vector? vec) (integer? start) (integer? end)) vector?))
  (tags pure))
 ((name . "vector->s32vector")
  (signature
   case-lambda
   (((vector? vec)) s32vector?)
   (((vector? vec) (integer? start)) s32vector?)
   (((vector? vec) (integer? start) (integer? end)) s32vector?))
  (tags pure))
 ((name . "make-s32vector-generator")
  (signature lambda ((s32vector? vec)) procedure?)
  (subsigs (return (lambda () (or eof-object? s32?)))))
 ((name . "s32vector-comparator") (signature value comparator?))
 ((name . "write-s32vector")
  (signature
   case-lambda
   (((s32vector vec)) undefined)
   (((s32vector vec) (output-port? port)) undefined))))
