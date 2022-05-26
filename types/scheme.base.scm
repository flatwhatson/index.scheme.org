(((name . *) (signature lambda ((number? z) ...) number?) (tags pure))
 ((name . +) (signature lambda ((number? z) ...) number?) (tags pure))
 ((name . -) (signature lambda ((number? z) ...) number?) (tags pure))
 ((name . /)
  (signature lambda ((number? z1) (number? z2) ...) number?)
  (tags pure))
 ((name . <)
  (signature lambda ((real? x1) (real? x2) (real? x3) ...) boolean?)
  (tags pure))
 ((name . <=)
  (signature lambda ((real? x1) (real? x2) (real? x3) ...) boolean?)
  (tags pure))
 ((name . =)
  (signature lambda ((number? z1) (number? z2) (number? z3) ...) boolean?)
  (tags pure))
 ((name . =>)
  (signature lambda ((real? x1) (real? x2) (real? x3) ...) boolean?)
  (tags pure))
 ((name . >)
  (signature lambda ((real? x1) (real? x2) (real? x3) ...) boolean?)
  (tags pure))
 ((name . >=)
  (signature lambda ((real? x1) (real? x2) (real? x3) ...) boolean?)
  (tags pure))
 ((name . abs) (signature lambda ((real? x)) number?) (tags pure))
 ((name . and) (signature syntax-rules () ((_ test1 ...))))
 ((name . append) (signature lambda ((list? list) ...) list?) (tags pure))
 ((name . append) (signature lambda ((list? list) ... obj) *) (tags pure))
 ((name . apply)
  (signature lambda ((procedure? proc) arg1 ... (list? args)) *)
  (tags pure))
 ((name . assoc)
  (signature lambda (obj (list? alist)) (or pair? #f))
  (tags pure))
 ((name . assoc)
  (signature lambda (obj (list? alist) (procedure? =)) (or pair? #f))
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . assq)
  (signature lambda (obj (list? alist)) (or pair? #f))
  (tags pure))
 ((name . assv)
  (signature lambda (obj (list? alist)) (or pair? #f))
  (tags pure))
 ((name . begin)
  (signature syntax-rules () ((_ expression-or-definition ...))))
 ((name . binary-port?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes port?))
 ((name . boolean=?)
  (signature
   lambda
   ((boolean? boolean1) (boolean? boolean2) (boolean? boolean3) ...)
   boolean?)
  (tags pure))
 ((name . boolean?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . bytevector)
  (signature lambda ((integer? byte) ...) bytevector?)
  (tags pure))
 ((name . bytevector-append)
  (signature lambda ((bytevector? bytevector) ...) bytevector?)
  (tags pure))
 ((name . bytevector-copy)
  (signature lambda ((bytevector? bytevector)) bytevector?)
  (tags pure))
 ((name . bytevector-copy)
  (signature lambda ((bytevector? bytevector) (integer? start)) bytevector?)
  (tags pure))
 ((name . bytevector-copy)
  (signature
   lambda
   ((bytevector? bytevector) (integer? start) (integer? end))
   bytevector?)
  (tags pure))
 ((name . bytevector-copy!)
  (signature
   lambda
   ((bytevector? to) (integer? at) (bytevector? from))
   undefined))
 ((name . bytevector-copy!)
  (signature
   lambda
   ((bytevector? to) (integer? at) (bytevector? from) (integer? start))
   undefined))
 ((name . bytevector-copy!)
  (signature
   lambda
   ((bytevector? to)
    (integer? at)
    (bytevector? from)
    (integer? start)
    (integer? end))
   undefined))
 ((name . bytevector-length)
  (signature lambda ((bytevector? bytevector)) integer?)
  (tags pure))
 ((name . bytevector-u8-ref)
  (signature lambda ((bytevector? bytevector) (integer? k)) integer?)
  (tags pure))
 ((name . bytevector-u8-set!)
  (signature
   lambda
   ((bytevector? bytevector) (integer? k) (integer? byte))
   undefined))
 ((name . bytevector?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . caar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . call-with-current-continuation)
  (signature lambda ((procedure? proc)) *)
  (subsigs (proc (lambda ((procedure? k)) *))))
 ((name . call-with-port)
  (signature lambda ((port? port) (procedure? proc)) *)
  (subsigs (proc (lambda ((port? port)) *))))
 ((name . call-with-values)
  (signature lambda ((procedure? producer) (procedure? consumer)) *)
  (tags pure)
  (subsigs (producer (lambda () *)) (consumer (lambda (obj ...) *))))
 ((name . call/cc)
  (signature lambda ((procedure? proc)) *)
  (subsigs (proc (lambda ((procedure? k)) *))))
 ((name . car) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . case)
  (signature syntax-rules (=> else) ((_ key clause1 clause2 ...)))
  (subsigs
   (clause
    ((datum1 ...) expression1 expression2 ...)
    ((datum1 ...) => expression)
    (else expression1 expression2 ...))))
 ((name . cdar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . ceiling) (signature lambda ((real? x)) real?) (tags pure))
 ((name . char->integer)
  (signature lambda ((char? char)) integer?)
  (tags pure))
 ((name . char-ready?) (signature lambda () boolean?) (parameterized-by "(scheme base) current-input-port"))
 ((name . char-ready?) (signature lambda ((input-port? port)) boolean?))
 ((name . char<=?)
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure))
 ((name . char<?)
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure))
 ((name . char=?)
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure))
 ((name . char>=?)
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure))
 ((name . char>?)
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure))
 ((name . char?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . close-input-port) (signature lambda ((input-port? port)) undefined))
 ((name . close-output-port)
  (signature lambda ((output-port? port)) undefined))
 ((name . close-port) (signature lambda ((port? port)) undefined))
 ((name . complex?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes number?))
 ((name . cond)
  (signature syntax-rules (else =>) ((_ clause1 clause2 ...)))
  (subsigs
   (clause
    (test expression1 ...)
    (test => expression)
    (else expression1 expression2 ...))))
 ((name . cond-expand)
  (signature
   syntax-rules
   (library and or not else)
   ((_ ce-clause1 ce-clause2 ...)))
  (subsigs
   (ce-clause (feature-requirement expression ...) (else expression))
   (feature-requirement
    feature-identifier
    (library library-name)
    (and feature-requirement ...)
    (or feature-requirement ...)
    (not feature-requirement))))
 ((name . cons) (signature lambda (obj1 obj2) pair?) (tags pure))
 ((name . current-error-port)
  (signature lambda () output-port?)
  (tags parameter))
 ((name . current-input-port)
  (signature lambda () input-port?)
  (tags parameter))
 ((name . current-output-port)
  (signature lambda () output-port?)
  (tags parameter))
 ((name . define)
  (signature
   syntax-rules
   ()
   ((_ variable expression))
   ((_ (variable parameter1 ...) body))
   ((_ (variable parameter1 ... . parameter) body))))
 ((name . define-record-type)
  (signature syntax-rules () ((name constructor pred field ...)))
  (subsigs
   (constructor (constructor-name field-name ...))
   (field (field-name accessor-name)
          (field-name accessor-name modifier-name))))
 ((name . define-syntax)
  (signature syntax-rules () ((_ keyword transformer-spec)))
  (syntax-param-signatures (transformer-spec transformer-spec)))
 ((name . define-values)
  (signature syntax-rules () ((_ formals expression)))
  (subsigs
   (formals
    (variable1 ...)
    variable
    (variable1 ... variable_n . variable_n+1))))
 ((name . denominator) (signature lambda ((rational? q)) integer?) (tags pure))
 ((name . do)
  (signature
   syntax-rules
   ()
   ((_ (variable-decl1 ...) (test expression ...) command ...)))
  (subsigs (variable-decl (variable init step) (variable init))))
 ((name . dynamic-wind)
  (signature
   lambda
   ((procedure? before) (procedure? thunk) (procedure? after))
   *)
  (subsigs
   (before (lambda () undefined))
   (thunk (lambda () *))
   (after (lambda () undefined))))
 ((name . eof-object) (signature lambda () eof-object?) (tags pure))
 ((name . eof-object?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . eq?) (signature lambda (obj1 obj2) boolean?) (tags pure))
 ((name . equal?) (signature lambda (obj1 obj2) boolean?) (tags pure))
 ((name . eqv?) (signature lambda (obj1 obj2) boolean?) (tags pure))
 ((name . error) (signature lambda ((string? message) obj ...) undefined))
 ((name . error-object-irritants)
  (signature lambda ((error-object? error-object)) list?)
  (tags pure))
 ((name . error-object-message)
  (signature lambda ((error-object? error-object)) string?)
  (tags pure))
 ((name . error-object?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . even?)
  (signature lambda ((integer? n)) boolean?)
  (tags pure predicate))
 ((name . exact) (signature lambda ((number? z)) exact?) (tags pure))
 ((name . exact-integer-sqrt)
  (signature lambda ((integer? k)) (values integer? integer?))
  (tags pure))
 ((name . exact-integer?)
  (signature lambda ((number? z)) boolean?)
  (tags pure)
  (subsigs)
  (supertypes exact? integer?))
 ((name . exact?)
  (signature lambda ((number? z)) boolean?)
  (tags pure)
  (subsigs)
  (supertypes number?))
 ((name . expt)
  (signature lambda ((number? z1) (number? z2)) number?)
  (tags pure))
 ((name . features) (signature lambda () list?) (tags pure))
 ((name . file-error?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . floor) (signature lambda ((real? x)) integer?) (tags pure))
 ((name . floor-quotient)
  (signature lambda ((integer? n1) (integer? n2)) integer?)
  (tags pure))
 ((name . floor-remainder)
  (signature lambda ((integer? n1) (integer? n2)) integer?)
  (tags pure))
 ((name . floor/)
  (signature lambda ((integer? n1) (integer? n2)) (values integer? integer?))
  (tags pure))
 ((name . flush-output-port)
  (signature lambda () undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . flush-output-port)
  (signature lambda ((output-port? port)) undefined))
 ((name . for-each)
  (signature
   lambda
   ((procedure? proc) (list? list1) (list? list2) ...)
   undefined)
  (subsigs (proc (lambda (obj1 obj2 ...) undefined))))
 ((name . gcd) (signature lambda ((integer? n) ...) integer?) (tags pure))
 ((name . get-output-bytevector)
  (signature lambda ((output-port? port)) bytevector?))
 ((name . get-output-string) (signature lambda ((output-port? port)) string?))
 ((name . guard)
  (signature
   syntax-rules
   (=> else)
   ((_ (variable cond-clause1 cond-clause2 ...) body)))
  (subsigs
   (cond-clause
    (test expression1 ...)
    (test => expression)
    (else expression1 expression2 ...))))
 ((name . if)
  (signature
   syntax-rules
   ()
   ((_ test consequent))
   ((_ test consequent alternate))))
 ((name . include) (signature syntax-rules () ((_ string1 string2 ...))))
 ((name . include-ci) (signature syntax-rules () ((_ string1 string2 ...))))
 ((name . inexact) (signature lambda ((number? z)) inexact?) (tags pure))
 ((name . inexact?)
  (signature lambda ((number? z)) boolean?)
  (tags pure)
  (subsigs)
  (supertypes number?))
 ((name . input-port-open?) (signature lambda ((input-port? port)) boolean?))
 ((name . input-port?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes port?))
 ((name . integer->char) (signature lambda ((integer? n)) char?) (tags pure))
 ((name . integer?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes rational?))
 ((name . lambda)
  (signature syntax-rules () ((_ formals body) procedure?))
  (subsigs
   (formals
    (variable1 ...)
    variable
    (variable1 ... variable_n . variable_n+1))))
 ((name . lcm) (signature lambda ((integer? n) ...) integer?) (tags pure))
 ((name . length) (signature lambda ((list? list)) integer?) (tags pure))
 ((name . let)
  (signature syntax-rules () ((_ bindings body)))
  (subsigs (bindings ((variable1 init1) ...))))
 ((name . let*)
  (signature syntax-rules () ((_ bindings body)))
  (subsigs (bindings ((variable1 init1) ...))))
 ((name . let*-values)
  (signature syntax-rules () ((_ mv-binding-spec body)))
  (subsigs
   (mv-binding-spec ((formals1 init1) ...))
   (formals
    (variable1 ...)
    variable
    (variable1 ... variable_n . variable_n+1))))
 ((name . let-syntax)
  (signature syntax-rules () ((_ bindings body)))
  (subsigs (bindings ((keyword transformer-spec) ...)))
  (syntax-param-signatures (transformer-spec transformer-spec)))
 ((name . let-values)
  (signature syntax-rules () ((_ mv-binding-spec body)))
  (subsigs
   (mv-binding-spec ((formals1 init1) ...))
   (formals
    (variable1 ...)
    variable
    (variable1 ... variable_n . variable_n+1))))
 ((name . letrec)
  (signature syntax-rules () ((_ bindings body)))
  (subsigs (bindings ((variable1 init1) ...))))
 ((name . letrec*)
  (signature syntax-rules () ((_ bindings body)))
  (subsigs (bindings ((variable1 init1) ...))))
 ((name . letrec-syntax)
  (signature syntax-rules () ((_ bindings body)))
  (subsigs (bindings ((keyword transformer-spec) ...))))
 ((name . list) (signature lambda (obj ...) list?) (tags pure))
 ((name . list->string) (signature lambda ((list? list)) string?) (tags pure))
 ((name . list->vector) (signature lambda ((list? list)) vector?) (tags pure))
 ((name . list-copy) (signature lambda (obj) *) (tags pure))
 ((name . list-ref)
  (signature lambda ((list? list) (integer? k)) *)
  (tags pure))
 ((name . list-set!)
  (signature lambda ((list? list) (integer? k) obj) undefined))
 ((name . list-tail)
  (signature lambda ((list? list) (integer? k)) list?)
  (tags pure))
 ((name . list?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes pair? null?))
 ((name . make-bytevector) (signature lambda ((integer? k)) bytevector?))
 ((name . make-bytevector)
  (signature lambda ((integer? k) (integer? byte)) bytevector?)
  (tags pure))
 ((name . make-list) (signature lambda ((integer? k)) list?))
 ((name . make-list) (signature lambda ((integer? k) obj) list?) (tags pure))
 ((name . make-parameter) (signature lambda (obj) procedure?) (tags pure))
 ((name . make-parameter)
  (signature lambda (obj (procedure? converter)) procedure?)
  (tags pure)
  (subsigs (converter (lambda (obj) *))))
 ((name . make-string) (signature lambda ((integer? k)) string?))
 ((name . make-string)
  (signature lambda ((integer? k) (char? char)) string?)
  (tags pure))
 ((name . make-vector) (signature lambda ((integer? k)) vector?))
 ((name . make-vector)
  (signature lambda ((integer? k) fill) vector?)
  (tags pure))
 ((name . map)
  (signature lambda ((procedure? proc) (list? list1) (list? list2) ...) list?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . max)
  (signature lambda ((real? x1) (real? x2) ...) real?)
  (tags pure))
 ((name . member)
  (signature lambda (obj (list? list)) (or #f list?))
  (tags pure))
 ((name . member)
  (signature lambda (obj (list? list) (procedure? compare)) (or #f list?))
  (tags pure)
  (subsigs (compare (lambda (obj1 obj2) *))))
 ((name . memq)
  (signature lambda (obj (list? list)) (or #f list?))
  (tags pure))
 ((name . memv)
  (signature lambda (obj (list? list)) (or #f list?))
  (tags pure))
 ((name . min)
  (signature lambda ((real? x1) (real? x2) ...) real?)
  (tags pure))
 ((name . modulo)
  (signature lambda ((integer? n1) (integer? n2)) integer?)
  (tags pure))
 ((name . negative?) (signature lambda ((real? x)) boolean?) (tags pure))
 ((name . newline) (signature lambda () undefined) (parameterized-by "(scheme base) current-output-port"))
 ((name . newline) (signature lambda ((output-port? port)) undefined))
 ((name . not) (signature lambda (obj) boolean?) (tags pure))
 ((name . null?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . number->string) (signature lambda ((number? z)) string?) (tags pure))
 ((name . number->string)
  (signature lambda ((number? z) (integer? radix)) string?)
  (tags pure))
 ((name . number?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . numerator) (signature lambda ((rational? q)) integer?) (tags pure))
 ((name . odd?)
  (signature lambda ((integer? n)) boolean?)
  (tags pure predicate))
 ((name . open-input-bytevector)
  (signature lambda ((bytevector? bytevector)) input-port?)
  (tags pure))
 ((name . open-input-string)
  (signature lambda ((string? string)) input-port?)
  (tags pure))
 ((name . open-output-bytevector)
  (signature lambda () output-port?)
  (tags pure))
 ((name . open-output-string) (signature lambda () output-port?) (tags pure))
 ((name . or) (signature syntax-rules () ((_ test1 ...))))
 ((name . output-port-open?) (signature lambda ((output-port? port)) boolean?))
 ((name . output-port?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes port?))
 ((name . pair?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . parameterize)
  (signature syntax-rules () ((_ ((param1 value1) ...) body))))
 ((name . peek-char)
  (signature lambda () (or eof-object? char?))
  (parameterized-by "(scheme base) current-input-port"))
 ((name . peek-char)
  (signature lambda ((input-port? port)) (or eof-object? char?)))
 ((name . peek-u8)
  (signature lambda () (or eof-object? integer?))
  (parameterized-by "(scheme base) current-input-port"))
 ((name . peek-u8)
  (signature lambda ((input-port? port)) (or eof-object? integer?)))
 ((name . port?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . positive?) (signature lambda ((real? x)) boolean?) (tags pure))
 ((name . procedure?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . quasiquote) (signature syntax-rules () ((_ qq-template))))
 ((name . quote) (signature syntax-rules () ((_ datum))))
 ((name . quotient)
  (signature lambda ((integer? n1) (integer? n2)) integer?)
  (tags pure))
 ((name . raise) (signature lambda (obj) undefined))
 ((name . raise-continuable) (signature lambda (obj) undefined))
 ((name . rational?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes real?))
 ((name . rationalize)
  (signature lambda ((real? x) (real? y)) rational?)
  (tags pure))
 ((name . read-bytevector)
  (signature lambda ((integer? k)) bytevector?)
  (parameterized-by "(scheme base) current-input-port"))
 ((name . read-bytevector)
  (signature lambda ((integer? k) (input-port? port)) bytevector?))
 ((name . read-bytevector!)
  (signature lambda ((bytevector? bytevector)) (or eof-object? integer?))
  (parameterized-by "(scheme base) current-input-port"))
 ((name . read-bytevector!)
  (signature
   lambda
   ((bytevector? bytevector) (input-port? port))
   (or eof-object? integer?)))
 ((name . read-bytevector!)
  (signature
   lambda
   ((bytevector? bytevector) (input-port? port) (integer? start))
   (or eof-object? integer?)))
 ((name . read-bytevector!)
  (signature
   lambda
   ((bytevector? bytevector)
    (input-port? port)
    (integer? start)
    (integer? end))
   (or eof-object? integer?)))
 ((name . read-char)
  (signature lambda () (or eof-object? char?))
  (parameterized-by "(scheme base) current-input-port"))
 ((name . read-char)
  (signature lambda ((input-port? port)) (or eof-object? char?)))
 ((name . read-error?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . read-line)
  (signature lambda () (or eof-object? string?))
  (parameterized-by "(scheme base) current-input-port"))
 ((name . read-line)
  (signature lambda ((input-port? port)) (or eof-object? string?)))
 ((name . read-string)
  (signature lambda ((integer? k)) (or eof-object? string?))
  (parameterized-by "(scheme base) current-input-port"))
 ((name . read-string)
  (signature
   lambda
   ((integer? k) (input-port? port))
   (or eof-object? string?)))
 ((name . read-u8)
  (signature lambda () (or eof-object? integer?))
  (parameterized-by "(scheme base) current-input-port"))
 ((name . read-u8)
  (signature lambda ((input-port? port)) (or eof-object? integer?)))
 ((name . real?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes complex?))
 ((name . remainder)
  (signature lambda ((integer? n1) (integer? n2)) integer?)
  (tags pure))
 ((name . reverse) (signature lambda ((list? list)) list?) (tags pure))
 ((name . round) (signature lambda ((real? x)) integer?) (tags pure))
 ((name . set!) (signature syntax-rules () ((_ variable expression))))
 ((name . set-car!) (signature lambda ((pair? pair) obj) undefined))
 ((name . set-cdr!) (signature lambda ((pair? pair) obj) undefined))
 ((name . square) (signature lambda ((number? z)) number?) (tags pure))
 ((name . string) (signature lambda ((char? char) ...) string?) (tags pure))
 ((name . string->list)
  (signature lambda ((string? string)) list?)
  (tags pure))
 ((name . string->list)
  (signature lambda ((string? string) (integer? start)) list?)
  (tags pure))
 ((name . string->list)
  (signature lambda ((string? string) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . string->number)
  (signature lambda ((string? string)) number?)
  (tags pure))
 ((name . string->number)
  (signature lambda ((string? string) (integer? radix)) number?)
  (tags pure))
 ((name . string->symbol)
  (signature lambda ((string? string)) symbol?)
  (tags pure))
 ((name . string->utf8)
  (signature lambda ((string? string)) bytevector?)
  (tags pure))
 ((name . string->utf8)
  (signature lambda ((string? string) (integer? start)) bytevector?)
  (tags pure))
 ((name . string->utf8)
  (signature
   lambda
   ((string? string) (integer? start) (integer? end))
   bytevector?)
  (tags pure))
 ((name . string->vector)
  (signature lambda ((string? string)) vector?)
  (tags pure))
 ((name . string->vector)
  (signature lambda ((string? string) (integer? start)) vector?)
  (tags pure))
 ((name . string->vector)
  (signature lambda ((string? string) (integer? start) (integer? end)) vector?)
  (tags pure))
 ((name . string-append)
  (signature lambda ((string? string) ...) string?)
  (tags pure))
 ((name . string-copy)
  (signature lambda ((string? string)) string?)
  (tags pure))
 ((name . string-copy)
  (signature lambda ((string? string) (integer? start)) string?)
  (tags pure))
 ((name . string-copy)
  (signature lambda ((string? string) (integer? start) (integer? end)) string?)
  (tags pure))
 ((name . string-copy!)
  (signature lambda ((string? to) (integer? at) (string? from)) undefined))
 ((name . string-copy!)
  (signature
   lambda
   ((string? to) (integer? at) (string? from) (integer? start))
   undefined))
 ((name . string-copy!)
  (signature
   lambda
   ((string? to) (integer? at) (string? from) (integer? start) (integer? end))
   undefined))
 ((name . string-fill!)
  (signature lambda ((string? string) (char? fill)) undefined))
 ((name . string-fill!)
  (signature
   lambda
   ((string? string) (char? fill) (integer? start))
   undefined))
 ((name . string-fill!)
  (signature
   lambda
   ((string? string) (char? fill) (integer? start) (integer? end))
   undefined))
 ((name . string-for-each)
  (signature
   lambda
   ((procedure? proc) (string? string1) (string? string2) ...)
   undefined)
  (subsigs (proc (lambda ((string? string) ...) undefined))))
 ((name . string-length)
  (signature lambda ((string? string)) integer?)
  (tags pure))
 ((name . string-map)
  (signature
   lambda
   ((procedure? proc) (string? string1) (string? string2) ...)
   string?)
  (tags pure)
  (subsigs (proc (lambda ((string? string) ...) char?))))
 ((name . string-ref)
  (signature lambda ((string? string) (integer? k)) char?)
  (tags pure))
 ((name . string-set!)
  (signature lambda ((string? string) (integer? k) (char? char)) undefined))
 ((name . string<=?)
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure))
 ((name . string<?)
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure))
 ((name . string=?)
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure))
 ((name . string>=?)
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure))
 ((name . string>?)
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure))
 ((name . string?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes textual?))
 ((name . substring)
  (signature lambda ((string? string) (integer? start) (integer? end)) string?)
  (tags pure))
 ((name . symbol->string)
  (signature lambda ((symbol? symbol)) string?)
  (tags pure))
 ((name . symbol=?)
  (signature
   lambda
   ((symbol? symbol1) (symbol? symbol2) (symbol? symbol3) ...)
   boolean?)
  (tags pure))
 ((name . symbol?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . syntax-error) (signature syntax-rules () ((_ message args ...))))
 ((name . syntax-rules)
  (signature
   syntax-rules
   ()
   ((_ (literal ...) syntax-rule ...) transformer-spec)
   ((_ ellipsis (literal ...) syntax-rule ...)  transformer-spec))
  (subsigs
   (syntax-rule (pattern template))
   (pattern
    identifier
    constant
    (pattern ...)
    (pattern pattern ... . pattern)
    (pattern ... pattern ellipsis pattern ...)
    (pattern ... pattern ellipsis pattern ... . pattern)
    (_append |#| (pattern ...))
    (_append |#| (pattern ... pattern ellipsis pattern ...)))
   (template
    identifier
    constant
    (element ...)
    (element element ... . template)
    (ellipsis template)
    (_append |#| (element ...)))
   (element template (_append template ellipsis))))
 ((name . textual-port?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes port?))
 ((name . truncate) (signature lambda ((real? x)) integer?) (tags pure))
 ((name . truncate-quotient)
  (signature lambda ((integer? n1) (integer? n2)) integer?)
  (tags pure))
 ((name . truncate-remainder)
  (signature lambda ((integer? n1) (integer? n2)) integer?)
  (tags pure))
 ((name . truncate/)
  (signature lambda ((integer? n1) (integer? n2)) (values integer? integer?))
  (tags pure))
 ((name . u8-ready?) (signature lambda () boolean?) (parameterized-by "(scheme base) current-input-port"))
 ((name . unless)
  (signature syntax-rules () ((_ test expression1 expression2 ...))))
 ((name . unquote) (signature syntax-rules () ((_ expression))))
 ((name . unquote-splicing) (signature syntax-rules () ((_ expression))))
 ((name . u8-ready?) (signature lambda ((input-port? port)) boolean?))
 ((name . utf8->string)
  (signature lambda ((bytevector? bytevector)) string?)
  (tags pure))
 ((name . utf8->string)
  (signature lambda ((bytevector? bytevector) (integer? start)) string?)
  (tags pure))
 ((name . utf8->string)
  (signature
   lambda
   ((bytevector? bytevector) (integer? start) (integer? end))
   string?)
  (tags pure))
 ((name . values) (signature lambda (obj ...) (values * ...)) (tags pure))
 ((name . vector) (signature lambda (obj ...) vector?) (tags pure))
 ((name . vector->list)
  (signature lambda ((vector? vector)) list?)
  (tags pure))
 ((name . vector->list)
  (signature lambda ((vector? vector) (integer? start)) list?)
  (tags pure))
 ((name . vector->list)
  (signature lambda ((vector? vector) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . vector->string)
  (signature lambda ((vector? vector)) string?)
  (tags pure))
 ((name . vector->string)
  (signature lambda ((vector? vector) (integer? start)) string?)
  (tags pure))
 ((name . vector->string)
  (signature lambda ((vector? vector) (integer? start) (integer? end)) string?)
  (tags pure))
 ((name . vector-append)
  (signature lambda ((vector? vector) ...) vector?)
  (tags pure))
 ((name . vector-copy)
  (signature lambda ((vector? vector)) vector?)
  (tags pure))
 ((name . vector-copy)
  (signature lambda ((vector? vector) (integer? start)) vector?)
  (tags pure))
 ((name . vector-copy)
  (signature lambda ((vector? vector) (integer? start) (integer? end)) vector?)
  (tags pure))
 ((name . vector-copy!)
  (signature lambda ((vector? to) (integer? at) (vector? from)) undefined))
 ((name . vector-copy!)
  (signature
   lambda
   ((vector? to) (integer? at) (vector? from) (integer? start))
   undefined))
 ((name . vector-copy!)
  (signature
   lambda
   ((vector? to) (integer? at) (vector? from) (integer? start) (integer? end))
   undefined))
 ((name . vector-fill!) (signature lambda ((vector? vector) fill) undefined))
 ((name . vector-fill!)
  (signature lambda ((vector? vector) fill (integer? start)) undefined))
 ((name . vector-fill!)
  (signature
   lambda
   ((vector? vector) fill (integer? start) (integer? end))
   undefined))
 ((name . vector-for-each)
  (signature
   lambda
   ((procedure? proc) (vector? vector1) (vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . vector-length)
  (signature lambda ((vector? vector)) integer?)
  (tags pure))
 ((name . vector-map)
  (signature
   lambda
   ((procedure? proc) (vector? vector1) (vector? vector2) ...)
   vector?)
  (tags pure)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . vector-ref)
  (signature lambda ((vector? vector) (integer? k)) *)
  (tags pure))
 ((name . vector-set!)
  (signature lambda ((vector? vector) (integer? k) obj) undefined))
 ((name . vector?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . when)
  (signature syntax-rules () ((_ test expression1 expression2 ...))))
 ((name . with-exception-handler)
  (signature lambda ((procedure? handler) (procedure? thunk)) *)
  (subsigs (handler (lambda (obj) *)) (thunk (lambda () *))))
 ((name . write-bytevector)
  (signature lambda ((bytevector? bytevector)) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-bytevector)
  (signature lambda ((bytevector? bytevector) (output-port? port)) undefined))
 ((name . write-bytevector)
  (signature
   lambda
   ((bytevector? bytevector) (output-port? port) (integer? start))
   undefined))
 ((name . write-bytevector)
  (signature
   lambda
   ((bytevector? bytevector)
    (output-port? port)
    (integer? start)
    (integer? end))
   undefined))
 ((name . write-char)
  (signature lambda ((char? char)) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-char)
  (signature lambda ((char? char) (output-port? port)) undefined))
 ((name . write-string)
  (signature lambda ((string? string)) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-string)
  (signature lambda ((string? string) (output-port? port)) undefined))
 ((name . write-string)
  (signature
   lambda
   ((string? string) (output-port? port) (integer? start))
   undefined))
 ((name . write-string)
  (signature
   lambda
   ((string? string) (output-port? port) (integer? start) (integer? end))
   undefined))
 ((name . write-u8)
  (signature lambda ((integer? byte)) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-u8)
  (signature lambda ((integer? byte) (output-port? port)) undefined))
 ((name . zero?)
  (signature lambda ((number? z)) boolean?)
  (tags pure predicate)))
