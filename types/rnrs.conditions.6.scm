(((name . &condition)
  (signature value record-type-descriptor?))
 ((name . condition)
  (signature lambda ((condition? condition1) ...) condition?)
  (tags pure))
 ((name . simple-conditions)
  (signature lambda ((condition? condition)) list?)
  (tags pure))
 ((name . condition?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . condition-predicate)
  (signature lambda ((record-type-descriptor? rtd)) procedure?)
  (tags pure)
  (subsigs
    (return (lambda (obj) boolean?))))
 ((name . condition-accessor)
  (signature lambda ((record-type-descriptor? rtd) (procedure? proc)) procedure?)
  (tags pure)
  (subsigs
    (proc (lambda (record) *))
    (return (lambda (record) *))))
 ((name . define-condition-type)
  (signature syntax-rules ()
             ((_ condition-type supertype constructor predicate field-spec1 ...)))
  (subsigs
    (field-spec (field accessor))))
 ((name . &message)
  (signature value record-type-descriptor?))
 ((name . make-message-condition)
  (signature lambda (message) message-condition?)
  (tags pure))
 ((name . message-condition?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes condition?))
 ((name . condition-message)
  (signature lambda ((message-condition? condition)) *)
  (tags pure))
 ((name . &warning)
  (signature value record-type-descriptor?))
 ((name . make-warning)
  (signature lambda () warning?)
  (tags pure))
 ((name . warning?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes condition?))
 ((name . &serious)
  (signature value record-type-descriptor?))
 ((name . make-serious-condition)
  (signature lambda () serious?)
  (tags pure))
 ((name . serious?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes condition?))
 ((name . &error)
  (signature value record-type-descriptor?))
 ((name . make-error)
  (signature lambda () error?)
  (tags pure))
 ((name . error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes serious?))
 ((name . &violation)
  (signature value record-type-descriptor?))
 ((name . make-violation)
  (signature lambda () violation?)
  (tags pure))
 ((name . violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes condition?))
 ((name . &assertion)
  (signature value record-type-descriptor?))
 ((name . make-assertion-violation)
  (signature lambda () assertion-violation?)
  (tags pure))
 ((name . assertion-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes violation?))
 ((name . &irritants)
  (signature value record-type-descriptor?))
 ((name . make-irritants-condition)
  (signature lambda ((list? irritants)) irritants-condition?)
  (tags pure))
 ((name . irritants-condition?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes condition?))
 ((name . condition-irritants)
  (signature lambda ((irritants-condition? condition)) list?)
  (tags pure))
 ((name . &who)
  (signature value record-type-descriptor?))
 ((name . make-who-condition)
  (signature lambda (((or string? symbol?) who)) who-condition?)
  (tags pure))
 ((name . who-condition?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes condition?))
 ((name . condition-who)
  (signature lambda ((who-condition? condition)) (or string? symbol?))
  (tags pure))
 ((name . &non-continuable)
  (signature value record-type-descriptor?))
 ((name . make-non-continuable-violation)
  (signature lambda () non-continuable-violation?)
  (tags pure))
 ((name . non-continuable-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes violation?))
 ((name . &implementation-restriction)
  (signature value record-type-descriptor?))
 ((name . make-implementation-restriction-violation)
  (signature lambda () implementation-restriction-violation?)
  (tags pure))
 ((name . implementation-restriction-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes violation?))
 ((name . &lexical)
  (signature value record-type-descriptor?))
 ((name . make-lexical-violation)
  (signature lambda () lexical-violation?)
  (tags pure))
 ((name . lexical-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes violation?))

 ((name . &syntax)
  (signature value record-type-descriptor?))
 ((name . make-syntax-violation)
  (signature lambda (form subform) syntax-violation?)
  (tags pure))
 ((name . syntax-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes violation?))
 ((name . syntax-violation-form)
  (signature lambda ((syntax-violation? condition)) *)
  (tags pure))
 ((name . syntax-violation-subform)
  (signature lambda ((syntax-violation? condition)) *)
  (tags pure))
 ((name . &undefined)
  (signature value record-type-descriptor?))
 ((name . make-undefined-violation)
  (signature lambda () undefined-violation?)
  (tags pure))
 ((name . undefined-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes violation?)))
