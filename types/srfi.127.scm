(((name . "generator->lseq")
  (signature lambda ((procedure? generator)) lseq?)
  (subsigs (generator (lambda () *)))
  (desc . "Returns an lseq whose elements are the values generated by generator. The exact behavior is as follows:
* Generator is invoked with no arguments to produce an object obj.
* If obj is an end-of-file object, the empty list is returned.
* Otherwise, a newly allocated pair whose car is obj and whose cdr is generator is returned."))
 ((name . "lseq?")
  (signature lambda (x) boolean?)
  (tags pure predicate)
  (desc . "Returns #t if x is an lseq. This procedure may also return #t if x is an improper list whose last cdr is a procedure that requires arguments, since there is no portable way to examine a procedure to determine how many arguments it requires. Otherwise it returns #f."))
 ((name . "lseq=?")
  (signature lambda ((procedure? elt=?) (lseq? lseq1) (lseq? lseq2)) boolean?)
  (subsigs (elt=? (lambda (a b) boolean?)))
  (tags pure)
  (desc . "Determines lseq equality, given an element-equality procedure. Two lseqs are equal if they are of the same length, and their corresponding elements are equal, as determined by elt=?. When elt=? is called, its first argument is always from lseq1 and its second argument is from lseq2.
The dynamic order in which the elt=? procedure is applied to pairs of elements is not specified.
The elt=? procedure must be consistent with eq?. This implies that two lseqs which are eq? are always lseq=?, as well; implementations may exploit this fact to \"short-cut\" the element-by-element equality tests."))
 ((name . "lseq-car")
  (signature lambda ((lseq? lseq)) *)
  (tags pure)
  (desc . "Returns the first element of lseq. It is included for completeness, as it is the same as car. It is an error to apply it to an empty lseq."))
 ((name . "lseq-first")
  (signature lambda ((lseq? lseq)) *)
  (tags pure)
  (desc . "Returns the first element of lseq. It is included for completeness, as it is the same as car. It is an error to apply it to an empty lseq."))
 ((name . "lseq-cdr")
  (signature lambda ((lseq? lseq)) lseq?)
  (tags pure)
  (desc . "Returns an lseq with the contents of lseq except for the first element. The exact behavior is as follows:
* If lseq is a pair whose cdr is a procedure, then the procedure is invoked with no arguments to produce an object obj.
    If obj is an end-of-file object, then the cdr of lseq is set to the empty list, which is returned.
    If obj is any other object, then a new pair is allocated whose car is obj and whose cdr is the cdr of lseq (i.e. the procedure). The cdr of lseq is set to the newly allocated pair, which is returned.
* If lseq is a pair whose cdr is not a procedure, then the cdr is returned.
* If lseq is not a pair, it is an error."))
 ((name . "lseq-rest")
  (signature lambda ((lseq? lseq)) lseq?)
  (tags pure)
  (desc . "Returns an lseq with the contents of lseq except for the first element. The exact behavior is as follows:
* If lseq is a pair whose cdr is a procedure, then the procedure is invoked with no arguments to produce an object obj.
    If obj is an end-of-file object, then the cdr of lseq is set to the empty list, which is returned.
    If obj is any other object, then a new pair is allocated whose car is obj and whose cdr is the cdr of lseq (i.e. the procedure). The cdr of lseq is set to the newly allocated pair, which is returned.
* If lseq is a pair whose cdr is not a procedure, then the cdr is returned.
* If lseq is not a pair, it is an error."))
 ((name . "lseq-ref")
  (signature lambda ((lseq? lseq) (integer? i)) *)
  (tags pure)
  (desc . "Returns the ith element of lseq. (This is the same as (lseq-first (lseq-drop lseq i)).) It is an error if i >= n, where n is the length of lseq."))
 ((name . "lseq-take")
  (signature lambda ((lseq? lseq) (integer? i)) lseq?)
  (tags pure)
  (desc . "lseq-take lazily returns the first i elements of lseq."))
 ((name . "lseq-drop")
  (signature lambda ((lseq? lseq) (integer? i)) lseq?)
  (tags pure)
  (desc . "lseq-drop returns all but the first i elements of lseq."))
 ((name . "lseq-realize") 
  (signature lambda ((lseq? lseq)) list?)
  (tags pure)
  (desc . "Repeatedly applies lseq-cdr to lseq until its generator (if there is one) has been exhausted, and returns lseq, which is now guaranteed to be a proper list. This procedure can be called on an arbitrary lseq before passing it to a procedure which only accepts lists. However, if the generator never returns an end-of-file object, lseq-realize will never return."))
 ((name . "lseq->generator")
  (signature lambda ((lseq? lseq)) procedure?)
  (subsigs (return (lambda () *)))
  (desc . "Returns a generator which when invoked will return all the elements of lseq, including any that have not yet been realized."))
 ((name . "lseq-length")
  (signature lambda ((lseq? lseq)) integer?)
  (tags pure)
  (desc . "Returns the length of its argument, which is the non-negative integer n such that lseq-rest applied n times to the lseq produces an empty lseq. lseq must be finite, or this procedure will not return."))
 ((name . "lseq-append")
  (signature lambda ((lseq? lseq) ...) lseq?)
  (tags pure)
  (desc . "Returns an lseq that lazily contains all the elements of all the lseqs in order."))
 ((name . "lseq-zip")
  (signature lambda ((lseq? lseq1) (lseq? lseq2) ...) lseq?)
  (tags pure)
  (desc . "If lseq-zip is passed n lseqs, it lazily returns an lseq each element of which is an n-element list comprised of the corresponding elements from the lseqs. If any of the lseqs are finite in length, the result is as long as the shortest lseq."))
 ((name . "lseq-map")
  (signature lambda ((procedure? proc) (lseq? lseq1) (lseq? lseq2) ...) lseq?)
  (subsigs (proc (lambda (value1 value2 ...) *)))
  (tags pure)
  (desc . "The lseq-map procedure lazily applies proc element-wise to the corresponding elements of the lseqs, where proc is a procedure taking as many arguments as there are lseqs and returning a single value, and returns an lseq of the results in order. The dynamic order in which proc is applied to the elements of the lseqs is unspecified."))
 ((name . "lseq-for-each")
  (signature lambda ((procedure? proc) (lseq? lseq1) (lseq? lseq2) ...) *)
  (subsigs (proc (lambda (value1 value2 ...) *)))
  (desc . "The arguments to lseq-for-each are like the arguments to lseq-map, but lseq-for-each calls proc for its side effects rather than for its values. Unlike lseq-map, lseq-for-each is guaranteed to call proc on the elements of the lseqs in order from the first element(s) to the last, and the value returned by lseq-for-each is unspecified.
If none of the lseqs are finite, lseq-for-each never returns."))
 ((name . "lseq-filter")
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (subsigs (pred (lambda (element) boolean?)))
  (tags pure)
  (desc . "The procedure lseq-filter lazily returns an lseq that contains only the elements of lseq that satisfy pred."))
 ((name . "lseq-remove")
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (subsigs (pred (lambda (element) boolean?)))
  (tags pure)
  (desc . "The procedure lseq-remove is the same as lseq-filter, except that it returns elements that do not satisfy pred. These procedures are guaranteed to call pred on the elements of the lseqs in sequence order."))
 ((name . "lseq-find")
  (signature lambda ((procedure? pred) (lseq? lseq)) *)
  (subsigs (pred (lambda (element) boolean?)))
  (tags pure)
  (desc . "Return the first element of lseq that satisfies predicate pred, or #f if no element does. It cannot reliably be applied to lseqs that include #f as an element; use lseq-find-tail instead. The predicate is guaranteed to be evaluated on the elements of lseq in sequence order, and only as often as necessary."))
 ((name . "lseq-find-tail")
  (signature lambda ((procedure? pred) (lseq? lseq)) (or #f lseq?))
  (subsigs (pred (lambda (element) boolean?)))
  (tags pure)
  (desc . "Returns the longest tail of lseq whose first element satisfies pred, or #f if no element does. The predicate is guaranteed to be evaluated on the elements of lseq in sequence order, and only as often as necessary. lseq-find-tail can be viewed as a general-predicate variant of the lseq-member function. "))
 ((name . "lseq-take-while")
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (subsigs (pred (lambda (element) boolean?)))
  (tags pure)
  (desc . "Lazily returns the longest initial prefix of lseq whose elements all satisfy the predicate pred."))
 ((name . "lseq-drop-while")
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (subsigs (pred (lambda (element) boolean?)))
  (tags pure)
  (desc . "Drops the longest initial prefix of lseq whose elements all satisfy the predicate pred, and returns the rest of the lseq. Note that lseq-drop-while is essentially lseq-find-tail where the sense of the predicate is inverted: lseq-find-tail searches until it finds an element satisfying the predicate; lseq-drop-while searches until it finds an element that doesn't satisfy the predicate."))
 ((name . "lseq-any")
  (signature lambda ((procedure? pred) (lseq? lseq1) (lseq? lseq2) ...) *)
  (subsigs (pred (lambda (element) *)))
  (tags pure)
  (desc . "Applies pred to successive elements of the lseqs, returning true if pred returns true on any application. If an application returns a true value, lseq-any immediately returns that value. Otherwise, it iterates until a true value is produced or one of the lseqs runs out of values; in the latter case, lseq-any returns #f. It is an error if pred does not accept the same number of arguments as there are lseqs and return a boolean result. Note the difference between lseq-find and lseq-any — lseq-find returns the element that satisfied the predicate; lseq-any returns the true value that the predicate produced. Like lseq-every, lseq-any's name does not end with a question mark — this is to indicate that it does not return a simple boolean (#t or #f), but a general value."))
 ((name . "lseq-every")
  (signature lambda ((procedure? pred) (lseq? lseq1) (lseq? lseq2) ...) *)
  (subsigs (pred (lambda (element) *)))
  (tags pure)
  (desc . "Applies pred to successive elements of the lseqs, returning true if the predicate returns true on every application. If an application returns a false value, lseq-every immediately returns that value. Otherwise, it iterates until a false value is produced or one of the lseqs runs out of values; in the latter case, lseq-every returns the last value returned by pred, or #t if pred was never invoked. It is an error if pred does not accept the same number of arguments as there are lseqs and return a boolean result. Like lseq-any, lseq-every's name does not end with a question mark — this is to indicate that it does not return a simple boolean (#t or #f), but a general value. "))
 ((name . "lseq-index")
  (signature
   lambda
   ((procedure? pred) (lseq? lseq1) (lseq? lseq2) ...)
   (or integer? #f))
  (subsigs (pred (lambda (element) *)))
  (tags pure)
  (desc . "Return the index of the leftmost element that satisfies pred. Applies pred to successive elements of the lseqs, returning an index usable with lseq-ref if the predicate returns true. Otherwise, it iterates until one of the lseqs runs out of values, in which case #f is returned. It is an error if pred does not accept the same number of arguments as there are lseqs and return a boolean result. The iteration stops when one of the lseqs runs out of values; in this case, lseq-index returns #f."))
 ((name . "lseq-member")
  (signature
   case-lambda
   ((x (lseq? lseq)) (or #f lseq?))
   ((x (lseq? lseq) (procedure? =)) (or #f lseq?)))
  (subsigs (= (lambda (a b) boolean?)))
  (tags pure)
  (desc . "Returns the longest tail of lseq whose first element is x, where the tails of lseq are the non-empty lseqs returned by (lseq-drop lseq i) for i less than the length of lseq. If x does not occur in lseq, then #f is returned. lseq-member uses pred to compare x with the elements of lseq, which defaults to equal?.
The equality procedure is used to compare the elements ei of lseq to the key x in this way: the first argument is always x, and the second argument is one of the lseq elements. Thus one can reliably find the first element of lseq that is greater than five with (lseq-member 5 lseq <)
Note that fully general lseq searching may be performed with the lseq-find-tail procedure."))
 ((name . "lseq-memq")
  (signature lambda (x (lseq? lseq)) (or #f lseq?))
  (tags pure)
  (desc . "Returns the longest tail of lseq whose first element is x, where the tails of lseq are the non-empty lseqs returned by (lseq-drop lseq i) for i less than the length of lseq. If x does not occur in lseq, then #f is returned. lseq-memq uses eq? to compare x with the elements of lseq.
The equality procedure is used to compare the elements ei of lseq to the key x in this way: the first argument is always x, and the second argument is one of the lseq elements. Thus one can reliably find the first element of lseq that is greater than five with (lseq-member 5 lseq <)
Note that fully general lseq searching may be performed with the lseq-find-tail procedure."))
 ((name . "lseq-memv")
  (signature lambda (x (lseq? lseq)) (or #f lseq?))
  (tags pure)
 (desc . "Returns the longest tail of lseq whose first element is x, where the tails of lseq are the non-empty lseqs returned by (lseq-drop lseq i) for i less than the length of lseq. If x does not occur in lseq, then #f is returned. lseq-memv uses eqv? to compare x with the elements of lseq.
The equality procedure is used to compare the elements ei of lseq to the key x in this way: the first argument is always x, and the second argument is one of the lseq elements. Thus one can reliably find the first element of lseq that is greater than five with (lseq-member 5 lseq <)
Note that fully general lseq searching may be performed with the lseq-find-tail procedure.")))
