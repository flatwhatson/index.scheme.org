(((name . "make-u64vector") (signature lambda ((integer? size)) u64vector?))
 ((name . "make-u64vector")
  (signature lambda ((integer? size) (u64? fill)) u64vector?)
  (tags pure))
 ((name . "u64vector")
  (signature lambda ((u64? value) ...) u64vector?)
  (tags pure))
 ((name . "u64?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . "u64vector?")
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . "u64vector-ref")
  (signature lambda ((u64vector? vec) (integer? i)) u64?)
  (tags pure))
 ((name . "u64vector-length")
  (signature lambda ((u64vector? vec)) integer?)
  (tags pure))
 ((name . "u64vector-set!")
  (signature lambda ((u64vector? vec) (integer? i) (u64? value)) undefined))
 ((name . "u64vector->list")
  (signature lambda ((u64vector? vec)) list?)
  (tags pure))
 ((name . "u64vector->list")
  (signature lambda ((u64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . "u64vector->list")
  (signature lambda ((u64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . "list->u64vector")
  (signature lambda ((list? proper-list)) u64vector?)
  (tags pure))
 ((name . "u64vector-unfold")
  (signature lambda ((procedure? f) (integer? length) seed) u64vector?)
  (subsigs (f (lambda ((integer? index) state) (values u64? *))))
  (tags pure))
 ((name . "u64vector-unfold")
  (signature lambda ((procedure? f) (integer? length) seed) u64vector?)
  (subsigs (f (lambda ((integer? index) state) (values u64? *))))
  (tags pure))
 ((name . "u64vector-copy")
  (signature lambda ((u64vector? vec)) u64vector?)
  (tags pure))
 ((name . "u64vector-copy")
  (signature lambda ((u64vector? vec) (integer? start)) u64vector?)
  (tags pure))
 ((name . "u64vector-copy")
  (signature
   lambda
   ((u64vector? vec) (integer? start) (integer? end))
   u64vector?)
  (tags pure))
 ((name . "u64vector-reverse-copy")
  (signature lambda ((u64vector? vec)) u64vector?)
  (tags pure))
 ((name . "u64vector-reverse-copy")
  (signature lambda ((u64vector? vec) (integer? start)) u64vector?)
  (tags pure))
 ((name . "u64vector-reverse-copy")
  (signature
   lambda
   ((u64vector? vec) (integer? start) (integer? end))
   u64vector?)
  (tags pure))
 ((name . "u64vector-append")
  (signature lambda ((u64vector? vec) ...) u64vector?)
  (tags pure))
 ((name . "u64vector-concatenate")
  (signature lambda ((list? list-of-u64vectors)) u64vector?)
  (tags pure))
 ((name . "u64vector-append-subvectors")
  (signature
   lambda
   ((u64vector? vec1) (integer? start1) (integer? start2) ...)
   u64vector?)
  (tags pure))
 ((name . "u64vector-empty?")
  (signature lambda ((u64vector? vec)) boolean?)
  (tags pure))
 ((name . "u64vector=")
  (signature lambda ((u64vector? vec) ...) boolean?)
  (tags pure))
 ((name . "u64vector-take")
  (signature lambda ((u64vector? vec) (integer? n)) u64vector?)
  (tags pure))
 ((name . "u64vector-take-right")
  (signature lambda ((u64vector? vec) (integer? n)) u64vector?)
  (tags pure))
 ((name . "u64vector-drop")
  (signature lambda ((u64vector? vec) (integer? n)) u64vector?)
  (tags pure))
 ((name . "u64vector-drop-right")
  (signature lambda ((u64vector? vec) (integer? n)) u64vector?)
  (tags pure))
 ((name . "u64vector-segment")
  (signature lambda ((u64vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . "u64vector-fold")
  (signature
   lambda
   ((procedure? kons) knil (u64vector? vec1) (u64vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-fold-right")
  (signature
   lambda
   ((procedure? kons) knil (u64vector? vec1) (u64vector? vec2) ...)
   *)
  (subsigs (kons (lambda (state obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-map")
  (signature
   lambda
   ((procedure? proc) (u64vector? vector1) (u64vector? vector2) ...)
   vector?)
  (subsigs (proc (lambda (obj ...) *)))
  (tags pure))
 ((name . "u64vector-map!")
  (signature
   lambda
   ((procedure? proc) (u64vector? vector1) (u64vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . "u64vector-for-each")
  (signature
   lambda
   ((procedure? proc) (u64vector? vector1) (u64vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . "u64vector-count")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec1) (u64vector? vec2) ...)
   integer?)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-cumulate")
  (signature lambda ((procedure? f) knil (u64vector? vec)) u64vector?)
  (subsigs (f (lambda (obj1 obj2) *)))
  (tags pure))
 ((name . "u64vector-take-while")
  (signature lambda ((procedure? pred?) (u64vector? vec)) u64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u64vector-take-while-right")
  (signature lambda ((procedure? pred?) (u64vector? vec)) u64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u64vector-drop-while")
  (signature lambda ((procedure? pred?) (u64vector? vec)) u64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u64vector-drop-while-right")
  (signature lambda ((procedure? pred?) (u64vector? vec)) u64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u64vector-index")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec1) (u64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-index-right")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec1) (u64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-skip")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec1) (u64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-skip-right")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec1) (u64vector? vec2) ...)
   (or integer? #f))
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-any")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec1) (u64vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-every")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec1) (u64vector? vec2) ...)
   *)
  (subsigs (pred? (lambda (obj1 obj2 ...) *)))
  (tags pure))
 ((name . "u64vector-partition")
  (signature
   lambda
   ((procedure? pred?) (u64vector? vec))
   (values u64vector? integer?))
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u64vector-filter")
  (signature lambda ((procedure? pred?) (u64vector? vec1)) u64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u64vector-remove")
  (signature lambda ((procedure? pred?) (u64vector? vec1)) u64vector?)
  (subsigs (pred? (lambda (obj) boolean?)))
  (tags pure))
 ((name . "u64vector-swap!")
  (signature
   lambda
   ((u64vector? u64vector) (integer? i) (integer? j))
   undefined))
 ((name . "u64vector-fill!")
  (signature lambda ((u64vector? u64vector) (u64? fill)) undefined))
 ((name . "u64vector-fill!")
  (signature
   lambda
   ((u64vector? u64vector) (u64? fill) (integer? start))
   undefined))
 ((name . "u64vector-fill!")
  (signature
   lambda
   ((u64vector? u64vector) (u64? fill) (integer? start) (integer? end))
   undefined))
 ((name . "u64vector-reverse!")
  (signature lambda ((u64vector? u64vector)) undefined))
 ((name . "u64vector-reverse!")
  (signature lambda ((u64vector? u64vector) (integer? start)) undefined))
 ((name . "u64vector-reverse!")
  (signature
   lambda
   ((u64vector? u64vector) (integer? start) (integer? end))
   undefined))
 ((name . "u64vector-copy!")
  (signature
   lambda
   ((u64vector? to) (integer? at) (u64vector? from))
   undefined))
 ((name . "u64vector-copy!")
  (signature
   lambda
   ((u64vector? to) (integer? at) (u64vector? from) (integer? start))
   undefined))
 ((name . "u64vector-copy!")
  (signature
   lambda
   ((u64vector? to)
    (integer? at)
    (u64vector? from)
    (integer? start)
    (integer? end))
   undefined))
 ((name . "u64vector-reverse-copy!")
  (signature
   lambda
   ((u64vector? to) (integer? at) (u64vector? from))
   undefined))
 ((name . "u64vector-reverse-copy!")
  (signature
   lambda
   ((u64vector? to) (integer? at) (u64vector? from) (integer? start))
   undefined))
 ((name . "u64vector-reverse-copy!")
  (signature
   lambda
   ((u64vector? to)
    (integer? at)
    (u64vector? from)
    (integer? start)
    (integer? end))
   undefined))
 ((name . "u64vector-unfold!")
  (signature
   lambda
   ((procedure? f)
    (u64vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "u64vector-unfold-right!")
  (signature
   lambda
   ((procedure? f)
    (u64vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . "reverse-u64vector->list")
  (signature lambda ((u64vector? vec)) list?)
  (tags pure))
 ((name . "reverse-u64vector->list")
  (signature lambda ((u64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . "reverse-u64vector->list")
  (signature lambda ((u64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . "reverse-list->u64vector")
  (signature lambda ((list? proper-list)) u64vector?)
  (tags pure))
 ((name . "u64vector->vector")
  (signature lambda ((u64vector? vec)) vector?)
  (tags pure))
 ((name . "u64vector->vector")
  (signature lambda ((u64vector? vec) (integer? start)) vector?)
  (tags pure))
 ((name . "u64vector->vector")
  (signature lambda ((u64vector? vec) (integer? start) (integer? end)) vector?)
  (tags pure))
 ((name . "vector->u64vector")
  (signature lambda ((vector? vec)) u64vector?)
  (tags pure))
 ((name . "vector->u64vector")
  (signature lambda ((vector? vec) (integer? start)) u64vector?)
  (tags pure))
 ((name . "vector->u64vector")
  (signature lambda ((vector? vec) (integer? start) (integer? end)) u64vector?)
  (tags pure))
 ((name . "make-u64vector-generator")
  (signature lambda ((u64vector? vec)) procedure?)
  (subsigs (return (lambda () (or eof-object? u64?)))))
 ((name . "u64vector-comparator") (signature value comparator?))
 ((name . "write-u64vector")
  (signature lambda ((u64vector vec)) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . "write-u64vector")
  (signature lambda ((u64vector vec) (output-port? port)) undefined)))
