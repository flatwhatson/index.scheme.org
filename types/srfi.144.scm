(((name . "fl-e") (signature value flonum?))
 ((name . "fl-1/e") (signature value flonum?))
 ((name . "fl-e-2") (signature value flonum?))
 ((name . "fl-e-pi/4") (signature value flonum?))
 ((name . "fl-log2-e") (signature value flonum?))
 ((name . "fl-log10-e") (signature value flonum?))
 ((name . "fl-log-2") (signature value flonum?))
 ((name . "fl-1/log-2") (signature value flonum?))
 ((name . "fl-log-3") (signature value flonum?))
 ((name . "fl-log-pi") (signature value flonum?))
 ((name . "fl-log-10") (signature value flonum?))
 ((name . "fl-1/log-10") (signature value flonum?))
 ((name . "fl-pi") (signature value flonum?))
 ((name . "fl-1/pi") (signature value flonum?))
 ((name . "fl-2pi") (signature value flonum?))
 ((name . "fl-pi/2") (signature value flonum?))
 ((name . "fl-pi/4") (signature value flonum?))
 ((name . "fl-pi-squared") (signature value flonum?))
 ((name . "fl-degree") (signature value flonum?))
 ((name . "fl-2/pi") (signature value flonum?))
 ((name . "fl-2/sqrt-pi") (signature value flonum?))
 ((name . "fl-sqrt-2") (signature value flonum?))
 ((name . "fl-sqrt-3") (signature value flonum?))
 ((name . "fl-sqrt-5") (signature value flonum?))
 ((name . "fl-sqrt-10") (signature value flonum?))
 ((name . "fl-1/sqrt-2") (signature value flonum?))
 ((name . "fl-cbrt-2") (signature value flonum?))
 ((name . "fl-cbrt-3") (signature value flonum?))
 ((name . "fl-4thrt-2") (signature value flonum?))
 ((name . "fl-phi") (signature value flonum?))
 ((name . "fl-log-phi") (signature value flonum?))
 ((name . "fl-1/log-phi") (signature value flonum?))
 ((name . "fl-euler") (signature value flonum?))
 ((name . "fl-e-euler") (signature value flonum?))
 ((name . "fl-sin-1") (signature value flonum?))
 ((name . "fl-cos-1") (signature value flonum?))
 ((name . "fl-gamma-1/2") (signature value flonum?))
 ((name . "fl-gamma-1/3") (signature value flonum?))
 ((name . "fl-gamma-2/3") (signature value flonum?))
 ((name . "fl-greatest") (signature value flonum?))
 ((name . "fl-least") (signature value flonum?))
 ((name . "fl-epsilon") (signature value flonum?))
 ((name . "fl-fast-fl+*") (signature value boolean?))
 ((name . "fl-integer-exponent-zero") (signature value integer?))
 ((name . "fl-integer-exponent-nan") (signature value integer?))
 ((name . "flonum") (signature lambda ((real? number)) flonum?) (tags pure))
 ((name . "fladjacent")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "flcopysign")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "make-flonum")
  (signature lambda ((flonum? x) (integer? n)) flonum?)
  (tags pure))
 ((name . "flinteger-fraction")
  (signature lambda ((flonum? x)) (values flonum? flonum?))
  (tags pure))
 ((name . "flexponent") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flinteger-exponent")
  (signature lambda ((flonum? x)) integer?)
  (tags pure))
 ((name . "flnormalized-fraction-exponent")
  (signature lambda ((flonum? x)) (values flonum? integer?))
  (tags pure))
 ((name . "flsign-bit") (signature lambda ((flonum? x)) integer?) (tags pure))
 ((name . "flonum?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes real?))
 ((name . "fl=?")
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . "fl<?")
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . "fl>?")
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . "fl<=?")
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . "fl>=?")
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . "flunordered")
  (signature lambda ((flonum? x) (flonum? y)) boolean?)
  (tags pure))
 ((name . "flinteger?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flzero?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flpositive?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flnegative?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flodd?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "fleven?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flfinite?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flinfinite?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flnan?") (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . "flnormalized?")
  (signature lambda ((flonum? x)) boolean?)
  (tags pure))
 ((name . "fldenormalized?")
  (signature lambda ((flonum? x)) boolean?)
  (tags pure))
 ((name . "flmax") (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . "flmin") (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . "fl+") (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . "fl*") (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . "fl+*")
  (signature lambda ((flonum? x) (flonum? y) (flonum? z)) flonum?)
  (tags pure))
 ((name . "fl-")
  (signature lambda ((flonum? x) (flonum? y) ...) flonum?)
  (tags pure))
 ((name . "fl/")
  (signature lambda ((flonum? x) (flonum? y) ...) flonum?)
  (tags pure))
 ((name . "flabs") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flabsdiff")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "flposdiff")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "flsgn") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flnumerator") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "fldenominator")
  (signature lambda ((flonum? x)) flonum?)
  (tags pure))
 ((name . "flfloor") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flceiling") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flround") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "fltruncate") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flexp") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flexp2") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flexp-1") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flsquare") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flsqrt") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flcbrt") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flhypot")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "flexpt")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "fllog") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "fllog1+") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "fllog2") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "fllog10") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "make-fllog-base")
  (signature lambda ((flonum? base)) procedure?)
  (subsigs (return (lambda ((flonum? x)) flonum?)))
  (tags pure))
 ((name . "flsin") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flcos") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "fltan") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flasin") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flacos") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flatan") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flatan")
  (signature lambda ((flonum? y) (flonum? x)) flonum?)
  (tags pure))
 ((name . "flsinh") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flcosh") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "fltanh") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flasinh") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flacosh") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flatanh") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flquotient")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "flremainder")
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . "flremquo")
  (signature lambda ((flonum? x) (flonum? y)) (values flonum? integer?))
  (tags pure))
 ((name . "flgamma") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flloggamma") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flfirst-bessel")
  (signature lambda ((integer? n) (flonum? x)) flonum?)
  (tags pure))
 ((name . "flsecond-bessel")
  (signature lambda ((integer? n) (flonum? x)) flonum?)
  (tags pure))
 ((name . "flerf") (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . "flerfc") (signature lambda ((flonum? x)) flonum?) (tags pure)))
