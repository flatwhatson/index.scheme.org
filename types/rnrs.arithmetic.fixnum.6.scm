(((name . "fixnum?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (desc . "Returns #t if obj is an exact integer object within the fixnum range, #f otherwise."))
 ((name . "fixnum-width")
  (signature lambda () fixnum?)
  (tags pure)
  (desc . "Fixnum type size in bits"))
 ((name . "least-fixnum") 
  (signature lambda () fixnum?)
  (tags pure)
  (desc . "Smallest fixnum value"))
 ((name . "greatest-fixnum") 
  (signature lambda () fixnum?)
  (tags pure)
  (desc . "Biggest fixnum value"))
 ((name . "fx=?") 
  (signature lambda ((fixnum? i) ...) boolean?)
  (tags pure)
  (desc . "Return #t if arguments are equal, #f otherwise."))
 ((name . "fx<?")
  (signature lambda ((fixnum? i) ...) boolean?)
  (tags pure)
  (desc . "Return #t if arguments are monotonically increasing, #f otherwise."))
 ((name . "fx>?")
  (signature lambda ((fixnum? i) ...) boolean?)
  (tags pure)
  (desc . "Return #t if arguments are monotonically decreasing, #f otherwise."))
 ((name . "fx<=?")
  (signature lambda ((fixnum? i) ...) boolean?)
  (tags pure)
  (desc . "Return #t if arguments are monotonically nondecreasing, #f otherwise."))
 ((name . "fx>=?")
  (signature lambda ((fixnum? i) ...) boolean?)
  (tags pure)
  (desc . "Return #t if arguments are monotonically nonincreasing, #f otherwise."))
 ((name . "fxzero?") 
  (signature lambda ((fixnum? i)) boolean?)
  (tags pure)
  (desc . "Number equal to 0?"))
 ((name . "fxpositive?") 
  (signature lambda ((fixnum? i)) boolean?)
  (tags pure)
  (desc . "Number greater than 0?"))
 ((name . "fxnegative?")
  (signature lambda ((fixnum? i)) boolean?)
  (tags pure)
  (desc . "Number less than 0?"))
 ((name . "fxodd?") 
  (signature lambda ((fixnum? i)) boolean?)
  (tags pure)
  (desc . "Number is odd?"))
 ((name . "fxeven?")
  (signature lambda ((fixnum? i)) boolean?)
  (tags pure)
  (desc . "Number is even?"))
 ((name . "fxmax")
  (signature lambda ((fixnum? i) (fixnum? j) ...) fixnum?)
  (tags pure)
  (desc . "Return maximum of its arguments."))
 ((name . "fxmin")
  (signature lambda ((fixnum? i) (fixnum? j) ...) fixnum?)
  (tags pure)
  (desc . "Return minimum of its arguments."))
 ((name . "fx+")
  (signature lambda ((fixnum? i) (fixnum? j)) fixnum?)
  (tags pure)
  (desc . "The procedure returns the sum of its arguments, provided that sum is a fixnum. An exception with condition type &implementation-restriction is raised if that sum is not a fixnum."))
 ((name . "fx*")
  (signature lambda ((fixnum? i) (fixnum? j)) fixnum?)
  (tags pure)
  (desc . "The procedure returns the product of its arguments, provided that product is a fixnum. An exception with condition type &implementation-restriction is raised if that product is not a fixnum."))
 ((name . "fx-")
  (signature
   case-lambda
   (((fixnum? i) (fixnum? j)) fixnum?)
   (((fixnum? i)) fixnum?))
  (tags pure)
  (desc . "With two arguments, this procedure returns the difference fx1−fx2, provided that difference is a fixnum. With one argument, this procedure returns the additive inverse of its argument, provided that integer object is a fixnum. An exception with condition type &assertion is raised if the mathematically correct result of this procedure is not a fixnum."))
 ((name . "fxdiv")
  (signature lambda ((fixnum? x1) (fixnum? x2)) fixnum?)
  (tags pure)
  (desc . "Procedure implements number-theoretic integer division and returns the result of the mathematical operations specified in report section on “Integer division”."))
 ((name . "fxdiv0")
  (signature lambda ((fixnum? x1) (fixnum? x2)) fixnum?)
  (tags pure)
  (desc . "Procedure implements number-theoretic integer division and returns the result of the mathematical operations specified in report section on “Integer division”."))
 ((name . "fxdiv-and-mod")
  (signature lambda ((fixnum? x1) (fixnum? x2)) (values fixnum? fixnum?))
  (tags pure)
  (desc . "Procedure implements number-theoretic integer division and returns the result of the mathematical operations specified in report section on “Integer division”."))
 ((name . "fxdiv0-and-mod0")
  (signature lambda ((fixnum? x1) (fixnum? x2)) (values fixnum? fixnum?))
  (tags pure)
  (desc . "Procedure implements number-theoretic integer division and returns the result of the mathematical operations specified in report section on “Integer division”."))
 ((name . "fxmod")
  (signature lambda ((fixnum? x1) (fixnum? x2)) fixnum?)
  (tags pure)
  (desc . "Procedure implements number-theoretic integer division and returns the result of the mathematical operations specified in report section on “Integer division”."))
 ((name . "fxmod0")
  (signature lambda ((fixnum? x1) (fixnum? x2)) fixnum?)
  (tags pure)
  (desc . "Procedure implements number-theoretic integer division and returns the result of the mathematical operations specified in report section on “Integer division”."))
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
 ((name . "fxnot")
  (signature lambda ((fixnum? fx)) fixnum?)
  (tags pure)
  (desc . "Returns the unique fixnum that is congruent mod 2^w to the one's-complement of fx."))
 ((name . "fxand")
  (signature lambda ((fixnum? i) ...) fixnum?)
  (tags pure)
  (desc . "Procedure returns the fixnum that is the bit-wise \"and\" of the two's complement representations of its arguments. If it is passed only one argument, it returns that argument. If it is passed no arguments, it returns -1 that acts as identity for the operation."))
 ((name . "fxior")
  (signature lambda ((fixnum? i) ...) fixnum?)
  (tags pure)
  (desc . "Procedure returns the fixnum that is the bit-wise \"inclusive or\" of the two's complement representations of its arguments. If it is passed only one argument, it returns that argument. If it is passed no arguments, it returns 0 that acts as identity for the operation."))
 ((name . "fxxor")
  (signature lambda ((fixnum? i) ...) fixnum?)
  (tags pure)
  (desc . "Procedure returns the fixnum that is the bit-wise \"exclusive or\" of the two's complement representations of its arguments. If it is passed only one argument, it returns that argument. If it is passed no arguments, it returns 0 that acts as identity for the operation."))
 ((name . "fxif")
  (signature lambda ((fixnum? fx1) (fixnum? fx2) (fixnum? fx3)) fixnum?)
  (tags pure)
  (desc . "Returns the fixnum that is the bit-wise \"if\" of the two's complement representations of its arguments, i.e. for each bit, if it is 1 in fx1, the corresponding bit in fx2 becomes the value of the corresponding bit in the result, and if it is 0, the corresponding bit in fx3 becomes the corresponding bit in the value of the result."))
 ((name . "fxbit-count") 
  (signature lambda ((fixnum? fx)) fixnum?)
  (tags pure)
  (desc . "If fx is non-negative, this procedure returns the number of 1 bits in the two's complement representation of fx. Otherwise it returns the result of the following computation:
(fxnot (fxbit-count (fxnot ei)))"))
 ((name . "fxlength") 
  (signature lambda ((fixnum? fx)) fixnum?)
  (tags pure)
  (desc . "Returns the number of bits needed to represent fx if it is positive, and the number of bits needed to represent (fxnot fx) if it is negative."))
 ((name . "fxfirst-bit-set")
  (signature lambda ((fixnum? fx)) fixnum?)
  (tags pure)
  (desc . "Returns the index of the least significant 1 bit in the two's complement representation of fx. If fx is 0, then −1 is returned."))
 ((name . "fxbit-set?")
  (signature lambda ((fixnum? fx1) (fixnum? fx2)) boolean?)
  (tags pure)
  (desc . "Fx2 must be non-negative and less than (fixnum-width). The fxbit-set? procedure returns #t if the fx2th bit is 1 in the two's complement representation of fx1, and #f otherwise."))
 ((name . "fxcopy-bit")
  (signature
   lambda
   ((fixnum? fx1) (fixnum? fx2) (fixnum? fx3))
   fixnum?)
  (tags pure)
  (desc . "Fx2 must be non-negative and less than (fixnum-width). Fx3 must be 0 or 1. The fxcopy-bit procedure returns the result of replacing the fx2th bit of fx1 by fx3"))
 ((name . "fxbit-field")
  (signature lambda ((fixnum? fx1) (fixnum? fx2) (fixnum? fx3)) fixnum?)
  (tags pure)
  (desc . "Fx2 and fx3 must be non-negative and less than (fixnum-width). Moreover, fx2 must be less than or equal to fx3. The fxbit-field procedure returns the number represented by the bits at the positions from fx2 (inclusive) to fx3 (exclusive)"))
 ((name . "fxcopy-bit-field")
  (signature
   lambda
   ((fixnum? fx1) (fixnum? fx2) (fixnum? fx3) (fixnum? fx4))
   fixnum?)
  (tags pure)
  (desc . "Fx2 and fx3 must be non-negative and less than (fixnum-width). Moreover, fx2 must be less than or equal to fx3. The fxcopy-bit-field procedure returns the result of replacing in fx1 the bits at positions from fx2 (inclusive) to fx3 (exclusive) by the corresponding bits in fx4"))
 ((name . "fxarithmetic-shift")
  (signature lambda ((fixnum? fx1) (fixnum? fx2)) fixnum?)
  (tags pure)
  (desc . "The absolute value of fx2 must be less than (fixnum-width). If (floor (* fx1 (expt 2 fx2))) is a fixnum, then that fixnum is returned. Otherwise an exception with condition type &implementation-restriction is raised."))
 ((name . "fxarithmetic-shift-left")
  (signature lambda ((fixnum? fx1) (fixnum? fx2)) fixnum?)
  (tags pure)
  (desc . "Fx2 must be non-negative, and less than (fixnum-width). The fxarithmetic-shift-left procedure behaves the same as fxarithmetic-shift"))
 ((name . "fxarithmetic-shift-right")
  (signature lambda ((fixnum? fx1) (fixnum? fx2)) fixnum?)
  (tags pure)
  (desc . "Fx2 must be non-negative, and less than (fixnum-width). (fxarithmetic-shift-right fx1 fx2) behaves the same as (fxarithmetic-shift fx1 (fx- fx2))."))
 ((name . "fxrotate-bit-field")
  (signature
   lambda
   ((fixnum? i) (fixnum? from) (fixnum? to) (fixnum? count))
   fixnum?)
  (tags pure)
  (desc . "Fx2, fx3, and fx4 must be non-negative and less than (fixnum-width). Fx2 must be less than or equal to fx3. Fx4 must be less than the difference between fx3 and fx2. The fxrotate-bit-field procedure returns the result of cyclically permuting in fx1 the bits at positions from fx2 (inclusive) to fx3 (exclusive) by fx4 bits towards the more significant bits."))
 ((name . "fxreverse-bit-field")
  (signature lambda ((fixnum? fx1) (fixnum? fx2) (fixnum? fx3)) fixnum?)
  (tags pure)
  (desc . "Fx2 and fx3 must be non-negative and less than (fixnum-width). Moreover, fx2 must be less than or equal to fx3. The fxreverse-bit-field procedure returns the fixnum obtained from fx1 by reversing the order of the bits at positions from fx2 (inclusive) to fx3 (exclusive).")))
