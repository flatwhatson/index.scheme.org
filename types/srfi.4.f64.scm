(

 ((name . f64vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . make-f64vector)
  (signature lambda ((integer? size)) f64vector?))
 ((name . make-f64vector)
  (signature lambda ((integer? size) (real? fill)) f64vector?)
  (tags pure))
 ((name . f64vector-length)
  (signature lambda ((f64vector? vec)) integer?)
  (tags pure))
 ((name . f64vector-ref)
  (signature lambda ((f64vector? vec) (integer? i)) real?)
  (tags pure))
 ((name . f64vector-set!)
  (signature lambda ((f64vector? vec) (integer? i) (real? value)) undefined))
 ((name . f64vector->list)
  (signature lambda ((f64vector? vec)) list?)
  (tags pure))
 ((name . list->f64vector)
  (signature lambda ((list? proper-list)) f64vector?)
  (tags pure))

)
