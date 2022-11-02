(((name . "record?") (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . "record-rtd") (signature lambda ((record? rec)) rtd?) (tags pure))
 ((name . "rtd-name") (signature lambda ((rtd? rtd)) symbol?) (tags pure))
 ((name . "rtd-parent")
  (signature lambda ((rtd? rtd)) (or #f rtd?))
  (tags pure))
 ((name . "rtd-field-names")
  (signature lambda ((rtd? rtd)) vector?)
  (tags pure))
 ((name . "rtd-all-field-names")
  (signature lambda ((rtd? rtd)) vector?)
  (tags pure))
 ((name . "rtd-field-mutable?")
  (signature lambda ((rtd? rtd) (symbol? field)) boolean?)
  (tags pure)))
