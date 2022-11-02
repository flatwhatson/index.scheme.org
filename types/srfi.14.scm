(((name . "char-set?") (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . "char-set=")
  (signature lambda ((char-set? cs1) ...) boolean?)
  (tags pure))
 ((name . "char-set<=")
  (signature lambda ((char-set? cs1) ...) boolean?)
  (tags pure))
 ((name . "char-set-hash")
  (signature lambda ((char-set? cs)) integer?)
  (tags pure))
 ((name . "char-set-hash")
  (signature lambda ((char-set? cs) (integer? bound)) integer?)
  (tags pure))
 ((name . "char-set-cursor") (signature lambda ((char-set? cset)) *))
 ((name . "char-set-ref") (signature lambda ((char-set? cset) cursor) char?))
 ((name . "char-set-cursor-next")
  (signature lambda ((char-set? cset) cursor) *))
 ((name . "end-of-char-set?") (signature lambda (cursor) boolean?))
 ((name . "char-set-fold")
  (signature lambda ((procedure? kons) knil (char-set? cs)) *)
  (subsigs (kons (lambda ((char? c) state) *)))
  (tags pure))
 ((name . "char-set-unfold")
  (signature
   lambda
   ((procedure? f) (procedure? p) (procedure? g) seed)
   char-set?)
  (subsigs
   (f (lambda (seed) char?))
   (p (lambda (seed) boolean?))
   (g (lambda (seed) *)))
  (tags pure))
 ((name . "char-set-unfold")
  (signature
   lambda
   ((procedure? f) (procedure? p) (procedure? g) seed (char-set? base-cs))
   char-set?)
  (subsigs
   (f (lambda (seed) char?))
   (p (lambda (seed) boolean?))
   (g (lambda (seed) *)))
  (tags pure))
 ((name . "char-set-unfold!")
  (signature
   lambda
   ((procedure? f) (procedure? p) (procedure? g) seed (char-set? base-cs))
   char-set?)
  (subsigs
   (f (lambda (seed) char?))
   (p (lambda (seed) boolean?))
   (g (lambda (seed) *)))
  (tags pure))
 ((name . "char-set-for-each")
  (signature lambda ((procedure? proc) (char-set? cs)) undefined)
  (subsigs (proc (lambda ((char? c)) undefined))))
 ((name . "char-set-map")
  (signature lambda ((procedure? proc) (char-set? cs)) char-set?)
  (subsigs (proc (lambda ((char? c)) char?)))
  (tags pure))
 ((name . "char-set-copy")
  (signature lambda ((char-set? cs)) char-set?)
  (tags pure))
 ((name . "char-set")
  (signature lambda ((char? char1) ...) char-set?)
  (tags pure))
 ((name . "list->char-set")
  (signature lambda ((list? char-list)) char-set?)
  (tags pure))
 ((name . "list->char-set")
  (signature lambda ((list? char-list) (char-set? base-cs)) char-set?)
  (tags pure))
 ((name . "list->char-set!")
  (signature lambda ((list? char-list) (char-set? base-cs)) char-set?))
 ((name . "string->char-set")
  (signature lambda ((string? s)) char-set?)
  (tags pure))
 ((name . "string->char-set")
  (signature lambda ((string? s) (char-set? base-cs)) char-set?)
  (tags pure))
 ((name . "string->char-set!")
  (signature lambda ((string? s) (char-set? base-cs)) char-set?))
 ((name . "char-set-filter")
  (signature lambda ((procedure? pred) (char-set? cs)) char-set?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "char-set-filter")
  (signature
   lambda
   ((procedure? pred) (char-set? cs) (char-set? base-cs))
   char-set?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "char-set-filter!")
  (signature
   lambda
   ((procedure? pred) (char-set? cs) (char-set? base-cs))
   char-set?)
  (subsigs (pred (lambda ((char? c)) boolean?))))
 ((name . "ucs-range->char-set")
  (signature lambda ((integer? lower) (integer? upper)) char-set?)
  (tags pure))
 ((name . "ucs-range->char-set")
  (signature
   lambda
   ((integer? lower) (integer? upper) (boolean? error?))
   char-set?)
  (tags pure))
 ((name . "ucs-range->char-set")
  (signature
   lambda
   ((integer? lower) (integer? upper) (boolean? error?) (char-set? base-cs))
   char-set?)
  (tags pure))
 ((name . "ucs-range->char-set!")
  (signature
   lambda
   ((integer? lower) (integer? upper) (boolean? error?) (char-set? base-cs))
   char-set?))
 ((name . "->char-set") (signature lambda ((string? x)) char-set?) (tags pure))
 ((name . "->char-set") (signature lambda ((char? x)) char-set?) (tags pure))
 ((name . "->char-set")
  (signature lambda ((char-set? x)) char-set?)
  (tags pure))
 ((name . "char-set-size")
  (signature lambda ((char-set? cs)) integer?)
  (tags pure))
 ((name . "char-set-count")
  (signature lambda ((procedure? pred) (char-set? cs)) integer?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "char-set->list") (signature lambda ((char-set? cs)) list?))
 ((name . "char-set->string") (signature lambda ((char-set? cs)) string?))
 ((name . "char-set-contains?")
  (signature lambda ((char-set? cs) (char? char)) boolean?))
 ((name . "char-set-every")
  (signature lambda ((procedure? pred) (char-set? cs)) boolean?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "char-set-any")
  (signature lambda ((procedure? pred) (char-set? cs)) boolean?)
  (subsigs (pred (lambda ((char? c)) boolean?)))
  (tags pure))
 ((name . "char-set-adjoin")
  (signature lambda ((char-set? cs) (char? char1) ...) char-set?)
  (tags pure))
 ((name . "char-set-delete")
  (signature lambda ((char-set? cs) (char? char1) ...) char-set?)
  (tags pure))
 ((name . "char-set-adjoin!")
  (signature lambda ((char-set? cs) (char? char1) ...) char-set?))
 ((name . "char-set-delete!")
  (signature lambda ((char-set? cs) (char? char1) ...) char-set?))
 ((name . "char-set-complement")
  (signature lambda ((char-set? cs)) char-set?)
  (tags pure))
 ((name . "char-set-union")
  (signature lambda ((char-set? cs1) ...) char-set?)
  (tags pure))
 ((name . "char-set-intersection")
  (signature lambda ((char-set? cs1) ...) char-set?)
  (tags pure))
 ((name . "char-set-difference")
  (signature lambda ((char-set? cs1) (char-set? cs2) ...) char-set?)
  (tags pure))
 ((name . "char-set-xor")
  (signature lambda ((char-set? cs1) ...) char-set?)
  (tags pure))
 ((name . "char-set-diff+intersection")
  (signature
   lambda
   ((char-set? cs1) (char-set? cs2) ...)
   (values char-set? char-set?))
  (tags pure))
 ((name . "char-set-complement!")
  (signature lambda ((char-set? cs)) char-set?))
 ((name . "char-set-union")
  (signature lambda ((char-set? cs1) (char-set? cs2) ...) char-set?))
 ((name . "char-set-intersection!")
  (signature lambda ((char-set? cs1) (char-set? cs2) ...) char-set?))
 ((name . "char-set-difference!")
  (signature lambda ((char-set? cs1) (char-set? cs2) ...) char-set?))
 ((name . "char-set-xor!")
  (signature lambda ((char-set? cs1) (char-set? cs2) ...) char-set?))
 ((name . "char-set-diff+intersection!")
  (signature
   lambda
   ((char-set? cs1) (char-set? cs2) (char-set? cs3) ...)
   (values char-set? char-set?)))
 ((name . "char-set:lower-case") (signature value char-set?))
 ((name . "char-set:upper-case") (signature value char-set?))
 ((name . "char-set:title-case") (signature value char-set?))
 ((name . "char-set:letter") (signature value char-set?))
 ((name . "char-set:digit") (signature value char-set?))
 ((name . "char-set:letter+digit") (signature value char-set?))
 ((name . "char-set:graphic") (signature value char-set?))
 ((name . "char-set:printing") (signature value char-set?))
 ((name . "char-set:whitespace") (signature value char-set?))
 ((name . "char-set:iso-control") (signature value char-set?))
 ((name . "char-set:punctuation") (signature value char-set?))
 ((name . "char-set:symbol") (signature value char-set?))
 ((name . "char-set:hex-digit") (signature value char-set?))
 ((name . "char-set:blank") (signature value char-set?))
 ((name . "char-set:ascii") (signature value char-set?))
 ((name . "char-set:empty") (signature value char-set?))
 ((name . "char-set:full") (signature value char-set?)))
