(((name . array?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)) ;; TODO indicate vector / string as subtype
 ((name . equal?)
  (signature lambda (obj1 obj2) boolean?)
  (tags pure))
 ((name . array-rank)
  (signature lambda (obj) integer?)
  (tags pure))
 ((name . array-dimnesions)
  (signature lambda ((array? array)) list?)
  (tags pure))
 ((name . make-array)
  (signature lambda ((array? prototype) (integer? k1) ...) array?)
  (tags pure))
 ((name . make-shared-array)
  (signature lambda ((array? array) (procedure? mapper) (integer? k1) ...) array?)
  (tags pure)
  (subsigs
    (mapper (lambda ((integer? i1) ...) list?))))
 ((name . list->array)
  (signature lambda ((integer? rank) (array? proto) (list? list)) array?)
  (tags pure))
 ((name . array->list)
  (signature lambda ((array? array)) *)
  (tags pure))
 ((name . vector->array)
  (signature lambda ((vector? vect) (array? proto) (integer? dim1) ...) array?)
  (tags pure))
 ((name . array->vector)
  (signature lambda ((array? array)) vector?)
  (tags pure))
 ((name . array-in-bounds?)
  (signature lambda ((array? array) (integer? index1) ...) boolean?)
  (tags pure))
 ((name . array-ref)
  (signature lambda ((array? array) (integer? index1) ...) *)
  (tags pure))
 ((name . array-set!)
  (signature lambda ((array? array) obj (integer? index1) ...) undefined))
 ((name . |A:floC128b|)
  (signature lambda () array?))
 ((name . |A:floC128b|)
  (signature lambda ((complex? z)) array?)
  (tags pure))
 ((name . |A:floC64b|)
  (signature lambda () array?))
 ((name . |A:floC64b|)
  (signature lambda ((complex? z)) array?)
  (tags pure))
 ((name . |A:floC32b|)
  (signature lambda () array?))
 ((name . |A:floC32b|)
  (signature lambda ((complex? z)) array?)
  (tags pure))
 ((name . |A:floC16b|)
  (signature lambda () array?))
 ((name . |A:floC16b|)
  (signature lambda ((complex? z)) array?)
  (tags pure))
 ((name . |A:floR128b|)
  (signature lambda () array?))
 ((name . |A:floR128b|)
  (signature lambda ((real? z)) array?)
  (tags pure))
 ((name . |A:floR64b|)
  (signature lambda () array?))
 ((name . |A:floR64b|)
  (signature lambda ((real? z)) array?)
  (tags pure))
 ((name . |A:floR32b|)
  (signature lambda () array?))
 ((name . |A:floR32b|)
  (signature lambda ((real? z)) array?)
  (tags pure))
 ((name . |A:floR16b|)
  (signature lambda () array?))
 ((name . |A:floR16b|)
  (signature lambda ((real? z)) array?)
  (tags pure))
 ((name . |A:floQ128b|)
  (signature lambda () array?))
 ((name . |A:floQ128b|)
  (signature lambda ((real? z)) array?)
  (tags pure))
 ((name . |A:floQ64b|)
  (signature lambda () array?))
 ((name . |A:floQ64b|)
  (signature lambda ((real? z)) array?)
  (tags pure))
 ((name . |A:floQ32b|)
  (signature lambda () array?))
 ((name . |A:floQ32b|)
  (signature lambda ((real? z)) array?)
  (tags pure))
 ((name . |A:fixZ64b|)
  (signature lambda () array?))
 ((name . |A:fixZ64b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:fixZ32b|)
  (signature lambda () array?))
 ((name . |A:fixZ32b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:fixZ16b|)
  (signature lambda () array?))
 ((name . |A:fixZ16b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:fixZ8b|)
  (signature lambda () array?))
 ((name . |A:fixZ8b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:fixN64b|)
  (signature lambda () array?))
 ((name . |A:fixN64b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:fixN32b|)
  (signature lambda () array?))
 ((name . |A:fixN32b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:fixN16b|)
  (signature lambda () array?))
 ((name . |A:fixN16b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:fixN8b|)
  (signature lambda () array?))
 ((name . |A:fixN8b|)
  (signature lambda ((integer? z)) array?)
  (tags pure))
 ((name . |A:bool|)
  (signature lambda () array?))
 ((name . |A:bool|)
  (signature lambda ((boolean? b)) array?)
  (tags pure)))
