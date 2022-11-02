(((name . "fx-width") (signature value integer?))
 ((name . "fx-greatest") (signature value fixnum?))
 ((name . "fx-least") (signature value fixnum?))
 ((name . "fixnum?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . "fx=?") (signature lambda ((fixnum? i) ...) boolean?) (tags pure))
 ((name . "fx<?") (signature lambda ((fixnum? i) ...) boolean?) (tags pure))
 ((name . "fx>?") (signature lambda ((fixnum? i) ...) boolean?) (tags pure))
 ((name . "fx<=?") (signature lambda ((fixnum? i) ...) boolean?) (tags pure))
 ((name . "fx>=?") (signature lambda ((fixnum? i) ...) boolean?) (tags pure))
 ((name . "fxzero?") (signature lambda ((fixnum? i)) boolean?) (tags pure))
 ((name . "fxpositive?") (signature lambda ((fixnum? i)) boolean?) (tags pure))
 ((name . "fxnegative?") (signature lambda ((fixnum? i)) boolean?) (tags pure))
 ((name . "fxodd?") (signature lambda ((fixnum? i)) boolean?) (tags pure))
 ((name . "fxeven?") (signature lambda ((fixnum? i)) boolean?) (tags pure))
 ((name . "fxmax")
  (signature lambda ((fixnum? i) (fixnum? j) ...) fixnum?)
  (tags pure))
 ((name . "fxmin")
  (signature lambda ((fixnum? i) (fixnum? j) ...) fixnum?)
  (tags pure))
 ((name . "fx+")
  (signature lambda ((fixnum? i) (fixnum? j)) fixnum?)
  (tags pure))
 ((name . "fx-")
  (signature lambda ((fixnum? i) (fixnum? j)) fixnum?)
  (tags pure))
 ((name . "fxneg") (signature lambda ((fixnum? i)) fixnum?) (tags pure))
 ((name . "fx*")
  (signature lambda ((fixnum? i) (fixnum? j)) fixnum?)
  (tags pure))
 ((name . "fxquotient")
  (signature lambda ((fixnum? i) (fixnum? j)) fixnum?)
  (tags pure))
 ((name . "fxremainder")
  (signature lambda ((fixnum? i) (fixnum? j)) fixnum?)
  (tags pure))
 ((name . "fxabs") (signature lambda ((fixnum? i)) fixnum?) (tags pure))
 ((name . "fxsquare") (signature lambda ((fixnum? i)) fixnum?) (tags pure))
 ((name . "fxsqrt") (signature lambda ((fixnum? i)) fixnum?) (tags pure))
 ((name . "fx+/carry")
  (signature
   lambda
   ((fixnum? i) (fixnum? j) (fixnum? k))
   (values fixnum? fixnum?))
  (tags pure))
 ((name . "fx-/carry")
  (signature
   lambda
   ((fixnum? i) (fixnum? j) (fixnum? k))
   (values fixnum? fixnum?))
  (tags pure))
 ((name . "fx*/carry")
  (signature
   lambda
   ((fixnum? i) (fixnum? j) (fixnum? k))
   (values fixnum? fixnum?))
  (tags pure))
 ((name . "fxnot") (signature lambda ((integer? i)) integer?) (tags pure))
 ((name . "fxand") (signature lambda ((integer? i) ...) integer?) (tags pure))
 ((name . "fxior") (signature lambda ((integer? i) ...) integer?) (tags pure))
 ((name . "fxxor") (signature lambda ((integer? i) ...) integer?) (tags pure))
 ((name . "fxarithmetic-shift")
  (signature lambda ((fixnum? i) (integer? count)) fixnum?)
  (tags pure))
 ((name . "arithmetic-shift-left")
  (signature lambda ((fixnum? i) (integer? count)) fixnum?)
  (tags pure))
 ((name . "arithmetic-shift-right")
  (signature lambda ((fixnum? i) (integer? count)) fixnum?)
  (tags pure))
 ((name . "fxbit-count") (signature lambda ((fixnum? i)) integer?) (tags pure))
 ((name . "fxlength") (signature lambda ((fixnum? i)) integer?) (tags pure))
 ((name . "fxif")
  (signature lambda ((fixnum? mask) (fixnum? i) (fixnum? j)) fixnum?)
  (tags pure))
 ((name . "fxbit-set?")
  (signature lambda ((integer? index) (fixnum? i)) boolean?)
  (tags pure))
 ((name . "fxcopy-bit")
  (signature lambda ((integer? index) (fixnum? i) (boolean? boolean)) fixnum?)
  (tags pure))
 ((name . "fxfirst-set-bit")
  (signature lambda ((fixnum? i)) integer?)
  (tags pure))
 ((name . "fxbit-field")
  (signature lambda ((fixnum? i) (integer? start) (integer? end)) fixnum?)
  (tags pure))
 ((name . "fxbit-field-rotate")
  (signature
   lambda
   ((fixnum? i) (integer? count) (integer? start) (integer? end))
   fixnum?)
  (tags pure))
 ((name . "bit-field-reverse")
  (signature lambda ((fixnum? i) (integer? start) (integer? end)) fixnum?)
  (tags pure)))
