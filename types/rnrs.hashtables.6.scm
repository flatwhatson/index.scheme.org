(((name . "make-eq-hashtable") (signature lambda () hashtable?) (tags pure))
 ((name . "make-eq-hashtable")
  (signature lambda ((integer? k)) hashtable?)
  (tags pure))
 ((name . "make-eqv-hashtable") (signature lambda () hashtable?) (tags pure))
 ((name . "make-eqv-hashtable")
  (signature lambda ((integer? k)) hashtable?)
  (tags pure))
 ((name . "make-hashtable")
  (signature lambda ((procedure? hash-function) (procedure? equiv)) hashtable?)
  (subsigs
   (hash-function (lambda (key) integer?))
   (equiv (lambda (a b) boolean?)))
  (tags pure))
 ((name . "make-hashtable")
  (signature
   lambda
   ((procedure? hash-function) (procedure? equiv) (integer? k))
   hashtable?)
  (subsigs
   (hash-function (lambda (key) integer?))
   (equiv (lambda (a b) boolean?)))
  (tags pure))
 ((name . "hashtable?")
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . "hashtable-size")
  (signature lambda ((hashtable? hashtable)) integer?)
  (tags pure))
 ((name . "hashtable-ref")
  (signature lambda ((hashtable? hashtable) key default) *)
  (tags pure))
 ((name . "hashtable-set!")
  (signature lambda ((hashtable? hashtable) key obj) undefined))
 ((name . "hashtable-delete!")
  (signature lambda ((hashtable? hashtable) key) undefined))
 ((name . "hashtable-contains?")
  (signature lambda ((hashtable? hashtable) key) boolean?)
  (tags pure))
 ((name . "hashtable-update!")
  (signature
   lambda
   ((hashtable? hashtable) key (procedure? proc) default)
   boolean?)
  (subsigs (proc (lambda (value) *))))
 ((name . "hashtable-copy")
  (signature lambda ((hashtable? hashtable)) hashtable?)
  (tags pure))
 ((name . "hashtable-copy")
  (signature lambda ((hashtable? hashtable) (boolean? mutable)) hashtable?)
  (tags pure))
 ((name . "hashtable-clear!")
  (signature lambda ((hashtable? hashtable)) undefined))
 ((name . "hashtable-clear!")
  (signature lambda ((hashtable? hashtable) (integer? k)) undefined))
 ((name . "hashtable-keys")
  (signature lambda ((hashtable? hashtable)) vector?)
  (tags pure))
 ((name . "hashtable-values")
  (signature lambda ((hashtable? hashtable)) (values vector? vector?))
  (tags pure))
 ((name . "equal-hash") (signature lambda (obj) integer?) (tags pure))
 ((name . "string-hash")
  (signature lambda ((string? string)) integer?)
  (tags pure))
 ((name . "string-ci-hash")
  (signature lambda ((string? string)) integer?)
  (tags pure))
 ((name . "symbol-hash")
  (signature lambda ((symbol? symbol)) integer?)
  (tags pure)))
