(((name . "make-u8vector")
  (signature
   case-lambda
   (((integer? size)) u8vector?)
   (((integer? size) (u8? fill)) u8vector?))
  (tags pure))
 ((name . "u8vector")
  (signature lambda ((u8? value) ...) u8vector?)
  (tags pure))
 ((name . "u8?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . "u8vector?") (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . "u8vector-ref")
  (signature lambda ((u8vector? vec) (integer? i)) u8?)
  (tags pure))
 ((name . "u8vector-length")
  (signature lambda ((u8vector? vec)) integer?)
  (tags pure))
 ((name . "u8vector-set!")
  (signature lambda ((u8vector? vec) (integer? i) (u8? value)) undefined))
 ((name . "u8vector->list")
  (signature
   case-lambda
   (((u8vector? vec)) list?)
   (((u8vector? vec) (integer? start)) list?)
   (((u8vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "list->u8vector")
  (signature lambda ((list? proper-list)) u8vector?)
  (tags pure))
 ((name . "u8vector-unfold")
  (signature
   case-lambda
   (((procedure? f) (integer? length) seed) u8vector?)
   (((procedure? f) (integer? length) seed) u8vector?))
  (subsigs (f (lambda ((integer? index) state) (values u8? *))))
  (tags pure))
 ((name . "u8vector-copy")
  (signature
   case-lambda
   (((u8vector? vec)) u8vector?)
   (((u8vector? vec) (integer? start)) u8vector?)
   (((u8vector? vec) (integer? start) (integer? end)) u8vector?))
  (tags pure))
 ((name . "u8vector-reverse-copy")
  (signature
   case-lambda
   (((u8vector? vec)) u8vector?)
   (((u8vector? vec) (integer? start)) u8vector?)
   (((u8vector? vec) (integer? start) (integer? end)) u8vector?))
  (tags pure))
 ((name . "u8vector-append")
  (signature lambda ((u8vector? vec) ...) u8vector?)
  (tags pure))
 ((name . "u8vector-concatenate")
  (signature lambda ((list? list-of-u8vectors)) u8vector?)
  (tags pure))
 ((name . "u8vector-append-subvectors")
  (signature
   lambda
   ((u8vector? vec1) (integer? start1) (integer? start2) ...)
   u8vector?)
  (tags pure))
 ((name . "u8vector-empty?")
  (signature lambda ((u8vector? vec)) boolean?)
  (tags pure))
 ((name . "u8vector=")
  (signature lambda ((u8vector? vec) ...) boolean?)
  (tags pure))
 ((name . "u8vector-take")
  (signature lambda ((u8vector? vec) (integer? n)) u8vector?)
  (tags pure))
 ((name . "u8vector-take-right")
  (signature lambda ((u8vector? vec) (integer? n)) u8vector?)
  (tags pure))
 ((name . "u8vector-drop")
  (signature lambda ((u8vector? vec) (integer? n)) u8vector?)
  (tags pure))
 ((name . "u8vector-drop-right")
  (signature lambda ((u8vector? vec) (integer? n)) u8vector?)
  (tags pure))
 ((name . "u8vector-segment")
  (signature lambda ((u8vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . "u8vector-fold")
  (signature
   lambda
   ((procedure? kons) knil (u8vector? vec1) (u8vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-fold-right")
  (signature
   lambda
   ((procedure? kons) knil (u8vector? vec1) (u8vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-map")
  (signature
   lambda
   ((procedure? proc) (u8vector? vector1) (u8vector? vector2) ...)
   vector?)
  (subsigs (proc (lambda (obj ...) *)))
  (tags pure))
 ((name . "u8vector-map!")
  (signature
   lambda
   ((procedure? proc) (u8vector? vector1) (u8vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . "u8vector-for-each")
  (signature
   lambda
   ((procedure? proc) (u8vector? vector1) (u8vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . "u8vector-count")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec1) (u8vector? vec2) ...)
   integer?)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-cumulate")
  (signature lambda ((procedure? f) knil (u8vector? vec)) u8vector?)
  (subsigs (f (lambda (obj1 obj2) *)))
  (tags pure))
 ((name . "u8vector-take-while")
  (signature lambda ((procedure? pred?) (u8vector? vec)) u8vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u8vector-take-while-right")
  (signature lambda ((procedure? pred?) (u8vector? vec)) u8vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u8vector-drop-while")
  (signature lambda ((procedure? pred?) (u8vector? vec)) u8vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u8vector-drop-while-right")
  (signature lambda ((procedure? pred?) (u8vector? vec)) u8vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u8vector-index")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec1) (u8vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-index-right")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec1) (u8vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-skip")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec1) (u8vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-skip-right")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec1) (u8vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-any")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec1) (u8vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-every")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec1) (u8vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u8vector-partition")
  (signature
   lambda
   ((procedure? pred?) (u8vector? vec))
   (values u8vector? integer?))
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u8vector-filter")
  (signature lambda ((procedure? pred?) (u8vector? vec1)) u8vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u8vector-remove")
  (signature lambda ((procedure? pred?) (u8vector? vec1)) u8vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u8vector-swap!")
  (signature
   lambda
   ((u8vector? u8vector) (integer? i) (integer? j))
   undefined))
 ((name . "u8vector-fill!")
  (signature
   case-lambda
   (((u8vector? u8vector) (u8? fill)) undefined)
   (((u8vector? u8vector) (u8? fill) (integer? start)) undefined)
   (((u8vector? u8vector) (u8? fill) (integer? start) (integer? end))
    undefined)))
 ((name . "u8vector-reverse!")
  (signature
   case-lambda
   (((u8vector? u8vector)) undefined)
   (((u8vector? u8vector) (integer? start)) undefined)
   (((u8vector? u8vector) (integer? start) (integer? end)) undefined)))
 ((name . "u8vector-copy!")
  (signature
   case-lambda
   (((u8vector? to) (integer? at) (u8vector? from)) undefined)
   (((u8vector? to) (integer? at) (u8vector? from) (integer? start)) undefined)
   (((u8vector? to)
     (integer? at)
     (u8vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "u8vector-reverse-copy!")
  (signature
   case-lambda
   (((u8vector? to) (integer? at) (u8vector? from)) undefined)
   (((u8vector? to) (integer? at) (u8vector? from) (integer? start)) undefined)
   (((u8vector? to)
     (integer? at)
     (u8vector? from)
     (integer? start)
     (integer? end))
    undefined)))
 ((name . "u8vector-unfold!")
  (signature
   lambda
   ((procedure? f)
    (u8vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "u8vector-unfold-right!")
  (signature
   lambda
   ((procedure? f)
    (u8vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "reverse-u8vector->list")
  (signature
   case-lambda
   (((u8vector? vec)) list?)
   (((u8vector? vec) (integer? start)) list?)
   (((u8vector? vec) (integer? start) (integer? end)) list?))
  (tags pure))
 ((name . "reverse-list->u8vector")
  (signature lambda ((list? proper-list)) u8vector?)
  (tags pure))
 ((name . "u8vector->vector")
  (signature
   case-lambda
   (((u8vector? vec)) vector?)
   (((u8vector? vec) (integer? start)) vector?)
   (((u8vector? vec) (integer? start) (integer? end)) vector?))
  (tags pure))
 ((name . "vector->u8vector")
  (signature
   case-lambda
   (((vector? vec)) u8vector?)
   (((vector? vec) (integer? start)) u8vector?)
   (((vector? vec) (integer? start) (integer? end)) u8vector?))
  (tags pure))
 ((name . "make-u8vector-generator")
  (signature lambda ((u8vector? vec)) procedure?)
  (subsigs (return (lambda () (or eof-object? u8?)))))
 ((name . "u8vector-comparator") (signature value comparator?))
 ((name . "write-u8vector")
  (signature
   case-lambda
   (((u8vector vec)) undefined)
   (((u8vector vec) (output-port? port)) undefined))))
