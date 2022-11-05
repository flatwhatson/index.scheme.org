(((name . "test-assert")
  (signature syntax-rules () ((_ expression)) ((_ test-name expression)))
  (subsigs (test-name (value string?))))
 ((name . "test-eqv")
  (signature
   syntax-rules
   ()
   ((_ expected test-expr))
   ((_ test-name expected test-expr)))
  (subsigs (test-name (value string?))))
 ((name . "test-equal")
  (signature
   syntax-rules
   ()
   ((_ expected test-expr))
   ((_ test-name expected test-expr)))
  (subsigs (test-name (value string?))))
 ((name . "test-eq")
  (signature
   syntax-rules
   ()
   ((_ expected test-expr))
   ((_ test-name expected test-expr)))
  (subsigs (test-name (value string?))))
 ((name . "test-approximate")
  (signature
   syntax-rules
   ()
   ((_ expected test-expr error))
   ((_ test-name expected test-expr error)))
  (subsigs (test-name (value string?))))
 ((name . "test-error")
  (signature
   syntax-rules
   ()
   ((_ test-expr))
   ((_ error-type test-expr))
   ((_ test-name error-type test-expr)))
  (subsigs (test-name (value string?))))
 ((name . "test-read-eval-string")
  (signature syntax-rules () ((_ string)))
  (subsigs (string (value string?))))
 ((name . "test-begin")
  (signature syntax-rules () ((_ suite-name)) ((_ suite-name count))))
 ((name . "test-end") (signature syntax-rules () ((_)) ((_ suite-name))))
 ((name . "test-group")
  (signature syntax-rules () ((_ suite-name decl-or-expr ...))))
 ((name . "test-group-with-cleanup")
  (signature syntax-rules () ((_ suite-name decl-or-expr ... cleanup-form))))
 ((name . "test-match-name")
  (signature lambda ((string? name)) procedure?)
  (subsigs (return (lambda ((test-runner? runner)) boolean?))))
 ((name . "test-match-nth")
  (signature
   case-lambda
   (((integer? n)) procedure?)
   (((integer? n) (integer? count)) procedure?))
  (subsigs (return (lambda ((test-runner? runner)) boolean?))))
 ((name . "test-match-any")
  (signature lambda ((procedure? specifier) ...) procedure?)
  (subsigs
   (specifier (lambda ((test-runner? runner)) boolean?))
   (return (lambda ((test-runner? runner)) boolean?))))
 ((name . "test-match-all")
  (signature lambda ((procedure? specifier) ...) procedure?)
  (subsigs
   (specifier (lambda ((test-runner? runner)) boolean?))
   (return (lambda ((test-runner? runner)) boolean?))))
 ((name . "test-skip")
  (signature lambda (((or procedure? integer? string?) specifier)) undefined)
  (subsigs (specifier (lambda ((test-runner? runner)) boolean?))))
 ((name . "test-expect-fail")
  (signature lambda (((or procedure? integer? string?) specifier)) undefined)
  (subsigs (specifier (lambda ((test-runner? runner)) boolean?))))
 ((name . "test-runner?")
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . "test-runner-current")
  (signature
   case-lambda
   (() test-runner?)
   (((test-runner? runner)) undefined)))
 ((name . "test-runner-get") (signature lambda () test-runner?))
 ((name . "test-runner-simple") (signature lambda () test-runner?))
 ((name . "test-runner-null") (signature lambda () test-runner?))
 ((name . "test-runner-create") (signature lambda () test-runner?))
 ((name . "test-runner-factory")
  (signature case-lambda (() procedure?) (((procedure? factory)) undefined))
  (subsigs (factory (lambda () test-runner?))))
 ((name . "test-apply")
  (signature
   lambda
   (((or integer? string? procedure?) specifier) ... procedure)
   undefined)
  (subsigs
   (procedure (lambda () *))
   (specifier (lambda ((test-runner? runner)) boolean?))))
 ((name . "test-with-runner")
  (signature syntax-rules () ((_ runner decl-or-expr ...)))
  (subsigs (runner (value test-runner?))))
 ((name . "test-result-kind")
  (signature
   case-lambda
   (() (or #f symbol?))
   (((test-runner? runner)) (or #f symbol?)))
  (spec-values
   (return
    ("'pass" "The test passed, as expected.")
    ("'fail" "The test failed (and was not expected to).")
    ("'xfail" "The test failed and was expected to.")
    ("'xpass" "The test passed, but was expected to fail.")
    ("'skip" "The test was skipped."))))
 ((name . "test-passed?")
  (signature case-lambda (() boolean?) (((test-runner? runner)) boolean?)))
 ((name . "test-result-ref")
  (signature
   case-lambda
   (((test-runner? runner) (symbol? pname)) *)
   (((test-runner? runner) (symbol? pname) default) *)))
 ((name . "test-result-set!")
  (signature lambda ((test-runner? runner) (symbol? pname) value) undefined))
 ((name . "test-result-remove")
  (signature lambda ((test-runner? runner) (symbol? pname)) undefined))
 ((name . "test-result-clear")
  (signature lambda ((test-runner? runner)) undefined))
 ((name . "test-result-alist")
  (signature lambda ((test-runner? runner)) list?))
 ((name . "test-runner-on-test-begin")
  (signature lambda ((test-runner? runner)) procedure?)
  (subsigs (return (lambda ((test-runner? runner)) undefined))))
 ((name . "test-runner-on-test-begin!")
  (signature
   lambda
   ((test-runner? runner) (procedure? on-test-begin))
   undefined)
  (subsigs (on-test-begin (lambda ((test-runner? runner)) undefined))))
 ((name . "test-runner-on-test-end")
  (signature lambda ((test-runner? runner)) procedure?)
  (subsigs (return (lambda ((test-runner? runner)) undefined))))
 ((name . "test-runner-on-test-end!")
  (signature lambda ((test-runner? runner) (procedure? on-test-end)) undefined)
  (subsigs (on-test-end (lambda ((test-runner? runner)) undefined))))
 ((name . "test-runner-on-group-begin")
  (signature lambda ((test-runner? runner)) procedure?)
  (subsigs
   (return
    (lambda ((test-runner? runner) (string? suite-name) (integer? count))
      undefined))))
 ((name . "test-runner-on-group-begin!")
  (signature
   lambda
   ((test-runner? runner) (procedure? on-group-begin))
   undefined)
  (subsigs
   (on-group-begin
    (lambda ((test-runner? runner) (string? suite-name) (integer? count))
      undefined))))
 ((name . "test-runner-on-group-end")
  (signature lambda ((test-runner? runner)) procedure?)
  (subsigs (return (lambda ((test-runner? runner)) undefined))))
 ((name . "test-runner-on-group-end!")
  (signature
   lambda
   ((test-runner? runner) (procedure? on-group-end))
   undefined)
  (subsigs (on-group-end (lambda ((test-runner? runner)) undefined))))
 ((name . "test-runner-on-bad-count")
  (signature lambda ((test-runner? runner)) procedure?)
  (subsigs
   (return
    (lambda ((test-runner? runner)
             (integer? actual-count)
             (integer? expected-count))
      undefined))))
 ((name . "test-runner-on-bad-count!")
  (signature
   lambda
   ((test-runner? runner) (procedure? on-bad-count))
   undefined)
  (subsigs
   (on-bad-count
    (lambda ((test-runner? runner)
             (integer? actual-count)
             (integer? expected-count))
      undefined))))
 ((name . "test-runner-on-bad-end-name")
  (signature lambda ((test-runner? runner)) procedure?)
  (subsigs
   (return
    (lambda ((test-runner? runner) (string? begin-name) (string? end-name))
      undefined))))
 ((name . "test-runner-on-bad-end-name!")
  (signature
   lambda
   ((test-runner? runner) (procedure? on-bad-end-name))
   procedure?)
  (subsigs
   (on-bad-end-name
    (lambda ((test-runner? runner) (string? begin-name) (string? end-name))
      undefined))))
 ((name . "test-runner-on-final")
  (signature lambda ((test-runner? runner)) procedure?)
  (subsigs (return (lambda ((test-runner? runner)) undefined))))
 ((name . "test-runner-on-final!")
  (signature lambda ((test-runner? runner) (procedure? on-final)) undefined)
  (subsigs (on-final (lambda ((test-runner? runner)) undefined))))
 ((name . "test-on-test-begin-simple")
  (signature lambda ((test-runner? runner)) undefined))
 ((name . "test-on-test-end-simple")
  (signature lambda ((test-runner? runner)) undefined))
 ((name . "test-on-group-begin-simple")
  (signature
   lambda
   ((test-runner? runner) (string? suite-name) (integer? count))
   undefined))
 ((name . "test-on-group-end-simple")
  (signature lambda ((test-runner? runner)) undefined))
 ((name . "test-on-bad-count-simple")
  (signature
   lambda
   ((test-runner? runner) (integer? actual-count) (integer? expected-count))
   undefined))
 ((name . "test-on-bad-end-name-simple")
  (signature
   lambda
   ((test-runner? runner) (string? begin-name) (string? end-name))
   undefined))
 ((name . "test-runner-pass-count")
  (signature lambda ((test-runner? runner)) integer?))
 ((name . "test-runner-fail-count")
  (signature lambda ((test-runner? runner)) integer?))
 ((name . "test-runner-xpass-count")
  (signature lambda ((test-runner? runner)) integer?))
 ((name . "test-runner-xfail-count")
  (signature lambda ((test-runner? runner)) integer?))
 ((name . "test-runner-skip-count")
  (signature lambda ((test-runner? runner)) integer?))
 ((name . "test-runner-test-name")
  (signature lambda ((test-runner? runner)) string?))
 ((name . "test-runner-group-path")
  (signature lambda ((test-runner? runner)) list?))
 ((name . "test-runner-group-stack")
  (signature lambda ((test-runner? runner)) list?))
 ((name . "test-runner-aux-value")
  (signature lambda ((test-runner? runner)) *))
 ((name . "test-runner-aux-value!")
  (signature lambda ((test-runner? runner) on-test) *))
 ((name . "test-runner-reset")
  (signature lambda ((test-runner? runner)) undefined)))
