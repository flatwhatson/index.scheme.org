(((name . "set-car!")
  (signature lambda ((pair? pair) obj) undefined)
  (desc . "Stores obj in the car field of pair. The set-car! procedure returns unspecified values. If an immutable pair is passed to set-car!, an exception with condition type &assertion should be raised."))
 ((name . "set-cdr!")
  (signature lambda ((pair? pair) obj) undefined)
  (desc . "Stores obj in the cdr field of pair. The set-cdr! procedure returns unspecified values. If an immutable pair is passed to set-car!, an exception with condition type &assertion should be raised.")))
