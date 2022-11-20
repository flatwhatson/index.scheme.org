(((name . "char-alphabetic?")
  (signature lambda ((char? char)) boolean?)
  (tags pure)
  (desc . "char-alpabetic?, char-numeric?, char-whitespace? char-upper-case?, char-lower-case? These procedures return #t if their arguments are alphabetic, numeric, whitespace, upper case, or lower case characters, respectively, otherwise they return #f. Specifically, they must return #t when applied to characters with the Unicode properties Alphabetic, Numeric Digit, White Space, Uppercase, and Lowercase respectively, and #f when applied to any other Unicode characters. Note that many Unicode characters are alphabetic but neither upper nor lower case."))
 ((name . "char-ci<=?")
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure)
  (desc . "char-ci=?, char-ci<?, char-ci>?, char-ci<=?, char-ci>=? These procedures are similar to char=? et cetera, but they treat upper case and lower case letters as the same. For example, (char-ci=? #\A #\a) returns #t. Specifically, these procedures behave as if char-foldcase were applied to their arguments before they were compared."))
 ((name . "char-ci<?")
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure)
  (desc . "char-ci=?, char-ci<?, char-ci>?, char-ci<=?, char-ci>=? These procedures are similar to char=? et cetera, but they treat upper case and lower case letters as the same. For example, (char-ci=? #\A #\a) returns #t. Specifically, these procedures behave as if char-foldcase were applied to their arguments before they were compared."))
 ((name . "char-ci=?")
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure)
  (desc . "char-ci=?, char-ci<?, char-ci>?, char-ci<=?, char-ci>=? These procedures are similar to char=? et cetera, but they treat upper case and lower case letters as the same. For example, (char-ci=? #\A #\a) returns #t. Specifically, these procedures behave as if char-foldcase were applied to their arguments before they were compared."))
 ((name . "char-ci>=?")
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure)
  (desc . "char-ci=?, char-ci<?, char-ci>?, char-ci<=?, char-ci>=? These procedures are similar to char=? et cetera, but they treat upper case and lower case letters as the same. For example, (char-ci=? #\A #\a) returns #t. Specifically, these procedures behave as if char-foldcase were applied to their arguments before they were compared."))
 ((name . "char-ci>?")
  (signature lambda ((char? char1) (char? char2) (char? char3) ...) boolean?)
  (tags pure)
  (desc . "char-ci=?, char-ci<?, char-ci>?, char-ci<=?, char-ci>=? These procedures are similar to char=? et cetera, but they treat upper case and lower case letters as the same. For example, (char-ci=? #\A #\a) returns #t. Specifically, these procedures behave as if char-foldcase were applied to their arguments before they were compared."))
 ((name . "char-downcase")
  (signature lambda ((char? char)) char?)
  (tags pure)
  (desc . "The char-downcase procedure, given an argument that is the uppercase part of a Unicode casing pair, returns the lowercase member of the pair, provided that both characters are supported by the Scheme implementation. Note that language-sensitive casing pairs are not used. If the argument is not the uppercase member of such a pair, it is returned."))
 ((name . "char-foldcase")
  (signature lambda ((char? char)) char?)
  (tags pure)
  (desc . "The char-foldcase procedure applies the Unicode simple case-folding algorithm to its argument and returns the result. Note that language-sensitive folding is not used. If the argument is an uppercase letter, the result will be either a lowercase letter or the same as the argument if the lowercase letter does not exist or is not supported by the implementation. See UAX #29 [11] (part of the Unicode Standard) for details."))
 ((name . "char-lower-case?")
  (signature lambda ((char? char)) boolean?)
  (tags pure)
  (desc . "char-alpabetic?, char-numeric?, char-whitespace? char-upper-case?, char-lower-case? These procedures return #t if their arguments are alphabetic, numeric, whitespace, upper case, or lower case characters, respectively, otherwise they return #f. Specifically, they must return #t when applied to characters with the Unicode properties Alphabetic, Numeric Digit, White Space, Uppercase, and Lowercase respectively, and #f when applied to any other Unicode characters. Note that many Unicode characters are alphabetic but neither upper nor lower case."))
 ((name . "char-numeric?")
  (signature lambda ((char? char)) boolean?)
  (tags pure)
  (desc . "char-alpabetic?, char-numeric?, char-whitespace? char-upper-case?, char-lower-case? These procedures return #t if their arguments are alphabetic, numeric, whitespace, upper case, or lower case characters, respectively, otherwise they return #f. Specifically, they must return #t when applied to characters with the Unicode properties Alphabetic, Numeric Digit, White Space, Uppercase, and Lowercase respectively, and #f when applied to any other Unicode characters. Note that many Unicode characters are alphabetic but neither upper nor lower case."))
 ((name . "char-upcase")
  (signature lambda ((char? char)) char?)
  (tags pure)
  (desc . "The char-upcase procedure, given an argument that is the lowercase part of a Unicode casing pair, returns the uppercase member of the pair, provided that both characters are supported by the Scheme implementation. Note that language-sensitive casing pairs are not used. If the argument is not the lowercase member of such a pair, it is returned."))
 ((name . "char-upper-case?")
  (signature lambda ((char? char)) boolean?)
  (tags pure)
  (desc . "char-alpabetic?, char-numeric?, char-whitespace? char-upper-case?, char-lower-case? These procedures return #t if their arguments are alphabetic, numeric, whitespace, upper case, or lower case characters, respectively, otherwise they return #f. Specifically, they must return #t when applied to characters with the Unicode properties Alphabetic, Numeric Digit, White Space, Uppercase, and Lowercase respectively, and #f when applied to any other Unicode characters. Note that many Unicode characters are alphabetic but neither upper nor lower case."))
 ((name . "char-whitespace?")
  (signature lambda ((char? char)) boolean?)
  (tags pure)
  (desc . "char-alpabetic?, char-numeric?, char-whitespace? char-upper-case?, char-lower-case? These procedures return #t if their arguments are alphabetic, numeric, whitespace, upper case, or lower case characters, respectively, otherwise they return #f. Specifically, they must return #t when applied to characters with the Unicode properties Alphabetic, Numeric Digit, White Space, Uppercase, and Lowercase respectively, and #f when applied to any other Unicode characters. Note that many Unicode characters are alphabetic but neither upper nor lower case."))
 ((name . "digit-value")
  (signature lambda ((char? char)) (or #f integer?))
  (tags pure)
  (desc . "This procedure returns the numeric value (0 to 9) of its argument if it is a numeric digit (that is, if char-numeric? returns #t), or #f on any other character."))
 ((name . "string-ci<=?")
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure)
  (desc . "string<?, string-ci<?, string>?, string-ci>?, string<=?, string-ci<=?, string=>?, string-ci=>? These procedures return #t if their arguments are (respectively): monotonically increasing, monotonically decreasing, monotonically non-decreasing, or monotonically nonincreasing. These predicates are required to be transitive. These procedures compare strings in an implementationdefined way. One approach is to make them the lexicographic extensions to strings of the corresponding orderings on characters. In that case, string<? would be the lexicographic ordering on strings induced by the ordering char<? on characters, and if the two strings differ in length but are the same up to the length of the shorter string, the shorter string would be considered to be lexicographically less than the longer string. However, it is also permitted to use the natural ordering imposed by the implementation’s internal representation of strings, or a more complex locale-specific ordering. In all cases, a pair of strings must satisfy exactly one of string<?, string=?, and string>?, and must satisfy string<=? if and only if they do not satisfy string>? and string>=? if and only if they do not satisfy string<?. The \"-ci\" procedures behave as if they applied string-foldcase to their arguments before invoking the corresponding procedures without \"-ci\"."))
 ((name . "string-ci<?")
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure)
  (desc . "string<?, string-ci<?, string>?, string-ci>?, string<=?, string-ci<=?, string=>?, string-ci=>? These procedures return #t if their arguments are (respectively): monotonically increasing, monotonically decreasing, monotonically non-decreasing, or monotonically nonincreasing. These predicates are required to be transitive. These procedures compare strings in an implementationdefined way. One approach is to make them the lexicographic extensions to strings of the corresponding orderings on characters. In that case, string<? would be the lexicographic ordering on strings induced by the ordering char<? on characters, and if the two strings differ in length but are the same up to the length of the shorter string, the shorter string would be considered to be lexicographically less than the longer string. However, it is also permitted to use the natural ordering imposed by the implementation’s internal representation of strings, or a more complex locale-specific ordering. In all cases, a pair of strings must satisfy exactly one of string<?, string=?, and string>?, and must satisfy string<=? if and only if they do not satisfy string>? and string>=? if and only if they do not satisfy string<?. The \"-ci\" procedures behave as if they applied string-foldcase to their arguments before invoking the corresponding procedures without \"-ci\"."))
 ((name . "string-ci=?")
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure)
  (desc . "Returns #t if, after case-folding, all the strings are the same length and contain the same characters in the same positions, otherwise returns #f. Specifically, these procedures behave as if string-foldcase were applied to their arguments before comparing them."))
 ((name . "string-ci>=?")
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure)
  (desc . "string<?, string-ci<?, string>?, string-ci>?, string<=?, string-ci<=?, string=>?, string-ci=>? These procedures return #t if their arguments are (respectively): monotonically increasing, monotonically decreasing, monotonically non-decreasing, or monotonically nonincreasing. These predicates are required to be transitive. These procedures compare strings in an implementationdefined way. One approach is to make them the lexicographic extensions to strings of the corresponding orderings on characters. In that case, string<? would be the lexicographic ordering on strings induced by the ordering char<? on characters, and if the two strings differ in length but are the same up to the length of the shorter string, the shorter string would be considered to be lexicographically less than the longer string. However, it is also permitted to use the natural ordering imposed by the implementation’s internal representation of strings, or a more complex locale-specific ordering. In all cases, a pair of strings must satisfy exactly one of string<?, string=?, and string>?, and must satisfy string<=? if and only if they do not satisfy string>? and string>=? if and only if they do not satisfy string<?. The \"-ci\" procedures behave as if they applied string-foldcase to their arguments before invoking the corresponding procedures without \"-ci\"."))
 ((name . "string-ci>?")
  (signature
   lambda
   ((string? string1) (string? string2) (string? string3) ...)
   boolean?)
  (tags pure)
  (desc . "string<?, string-ci<?, string>?, string-ci>?, string<=?, string-ci<=?, string=>?, string-ci=>? These procedures return #t if their arguments are (respectively): monotonically increasing, monotonically decreasing, monotonically non-decreasing, or monotonically nonincreasing. These predicates are required to be transitive. These procedures compare strings in an implementationdefined way. One approach is to make them the lexicographic extensions to strings of the corresponding orderings on characters. In that case, string<? would be the lexicographic ordering on strings induced by the ordering char<? on characters, and if the two strings differ in length but are the same up to the length of the shorter string, the shorter string would be considered to be lexicographically less than the longer string. However, it is also permitted to use the natural ordering imposed by the implementation’s internal representation of strings, or a more complex locale-specific ordering. In all cases, a pair of strings must satisfy exactly one of string<?, string=?, and string>?, and must satisfy string<=? if and only if they do not satisfy string>? and string>=? if and only if they do not satisfy string<?. The \"-ci\" procedures behave as if they applied string-foldcase to their arguments before invoking the corresponding procedures without \"-ci\"."))
 ((name . "string-downcase")
  (signature lambda ((string? string)) string?)
  (tags pure)
  (desc . "string-upcase, string-downcase, string-foldcase These procedures apply the Unicode full string uppercasing, lowercasing, and case-folding algorithms to their arguments and return the result. In certain cases, the result differs in length from the argument. If the result is equal to the argument in the sense of string=?, the argument may be returned. Note that language-sensitive mappings and foldings are not used. The Unicode Standard prescribes special treatment of the Greek letter Σ, whose normal lower-case form is σ but which becomes ς at the end of a word. See UAX #29 [11] (part of the Unicode Standard) for details. However, implementations of string-downcase are not required to provide this behavior, and may choose to change Σ to σ in all cases."))
 ((name . "string-foldcase")
  (signature lambda ((string? string)) string?)
  (tags pure)
  (desc . "string-upcase, string-downcase, string-foldcase These procedures apply the Unicode full string uppercasing, lowercasing, and case-folding algorithms to their arguments and return the result. In certain cases, the result differs in length from the argument. If the result is equal to the argument in the sense of string=?, the argument may be returned. Note that language-sensitive mappings and foldings are not used. The Unicode Standard prescribes special treatment of the Greek letter Σ, whose normal lower-case form is σ but which becomes ς at the end of a word. See UAX #29 [11] (part of the Unicode Standard) for details. However, implementations of string-downcase are not required to provide this behavior, and may choose to change Σ to σ in all cases."))
 ((name . "string-upcase")
  (signature lambda ((string? string)) string?)
  (tags pure)
  (desc . "string-upcase, string-downcase, string-foldcase These procedures apply the Unicode full string uppercasing, lowercasing, and case-folding algorithms to their arguments and return the result. In certain cases, the result differs in length from the argument. If the result is equal to the argument in the sense of string=?, the argument may be returned. Note that language-sensitive mappings and foldings are not used. The Unicode Standard prescribes special treatment of the Greek letter Σ, whose normal lower-case form is σ but which becomes ς at the end of a word. See UAX #29 [11] (part of the Unicode Standard) for details. However, implementations of string-downcase are not required to provide this behavior, and may choose to change Σ to σ in all cases.")))
