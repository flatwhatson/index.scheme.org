(((name . "hashmap")
  (signature lambda ((comparator? comparator) arg ...) hashmap?)
  (tags pure)
  (desc . "Returns a newly allocated hashmap. The comparator argument is a SRFI 128 comparator, which is used to control and distinguish the keys of the hashmap. The args alternate between keys and values and are used to initialize the hashmap. In particular, the number of args has to be even. Earlier associations with equal keys take precedence over later arguments."))
 ((name . "hashmap-unfold")
  (signature
   lambda
   ((procedure? stop?)
    (procedure? mapper)
    (procedure? successor)
    seed
    (comparator? comparator))
   hashmap?)
  (subsigs
   (stop? (lambda (seed) boolean?))
   (mapper (lambda (seed) (values * *)))
   (successor (lambda (seed) *)))
  (tags pure)
  (desc . "Create a newly allocated hashmap as if by hashmap using comparator. If the result of applying the predicate stop? to seed is true, return the hashmap. Otherwise, apply the procedure mapper to seed. Mapper returns two values which are added to the hashmap as the key and the value, respectively. Then get a new seed by applying the procedure successor to seed, and repeat this algorithm. Associations earlier in the list take precedence over those that come later."))
 ((name . "hashmap?") (signature lambda (obj) boolean?) (tags pure predicate) (desc . "Returns #t if obj is a hashmap, and #f otherwise."))
 ((name . "hashmap-contains?")
  (signature lambda ((hashmap? hashmap) key) boolean?)
  (tags pure)
  (desc . "Returns #t if key is the key of an association of hashmap and #f otherwise."))
 ((name . "hashmap-empty?")
  (signature lambda ((hashmap? hashmap)) boolean?)
  (tags pure)
  (desc . "Returns #t if hashmap has no associations and #f otherwise."))
 ((name . "hashmap-disjoint?")
  (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2)) boolean?)
  (tags pure)
  (desc . "Returns #t if hashmap1 and hashmap2 have no keys in common and #f otherwise."))
 ((name . "hashmap-ref")
  (signature
   case-lambda
   (((hashmap? hashmap) key) *)
   (((hashmap? hashmap) key (procedure? failure)) *)
   (((hashmap? hashmap) key (procedure? failure) (procedure? success)) *))
  (subsigs (failure (lambda () *)) (success (lambda (value) *)))
  (tags pure)
  (desc . "Extracts the value associated to key in the hashmap hashmap, invokes the procedure success in tail context on it, and returns its result; if success is not provided, then the value itself is returned. If key is not contained in hashmap and failure is supplied, then failure is invoked in tail context on no arguments and its values are returned. Otherwise, it is an error."))
 ((name . "hashmap-ref/default")
  (signature lambda ((hashmap? hashmap) key default) *)
  (tags pure)
  (desc . "Semantically equivalent to, but may be more efficient than, the following code:
(hashmap-ref hashmap key (lambda () default))"))
 ((name . "hashmap-key-comparator")
  (signature lambda ((hashmap? hashmap)) comparator?)
  (tags pure)
  (desc . "Returns the comparator used to compare the keys of the hashmap hashmap."))
 ((name . "hashmap-adjoin")
  (signature lambda ((hashmap? hashmap) key1 value1 ...) hashmap?)
  (tags pure)
  (desc . "The hashmap-adjoin procedure returns a newly allocated hashmap that uses the same comparator as the hashmap hashmap and contains all the associations of hashmap, and in addition new associations by processing the arguments from left to right. The args alternate between keys and values. Whenever there is a previous association for a key, the previous association prevails and the new association is skipped. It is an error to add an association to hashmap whose key that does not return #t when passed to the type test procedure of the comparator."))
 ((name . "hashmap-adjoin!")
  (signature lambda ((hashmap? hashmap) key1 value1 ...) hashmap?)
  (desc . "The hashmap-adjoin! procedure is the same as hashmap-adjoin, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap."))
 ((name . "hashmap-set")
  (signature lambda ((hashmap? hashmap) key1 value1 ...) hashmap?)
  (tags pure)
  (desc . "The hashmap-set procedure returns a newly allocated hashmap that uses the same comparator as the hashmap hashmap and contains all the associations of hashmap, and in addition new associations by processing the arguments from left to right. The args alternate between keys and values. Whenever there is a previous association for a key, it is deleted. It is an error to add an association to hashmap whose key that does not return #t when passed to the type test procedure of the comparator."))
 ((name . "hashmap-set!")
  (signature lambda ((hashmap? hashmap) key1 value1 ...) hashmap?)
  (desc . "The hashmap-set! procedure is the same as hashmap-set, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap."))
 ((name . "hashmap-replace")
  (signature lambda ((hashmap? hashmap) key value) hashmap?)
  (tags pure)
  (desc . "The hashmap-replace procedure returns a newly allocated hashmap that uses the same comparator as the hashmap hashmap and contains all the associations of hashmap except as follows: If key is equal (in the sense of hashmap's comparator) to an existing key of hashmap, then the association for that key is omitted and replaced the association defined by the pair key and value. If there is no such key in hashmap, then hashmap is returned unchanged."))
 ((name . "hashmap-replace!")
  (signature lambda ((hashmap? hashmap) key value) hashmap?)
  (desc . "The hashmap-replace! procedure is the same as hashmap-replace, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap."))
 ((group
    ((name . "hashmap-delete")
     (signature lambda ((hashmap? hashmap) key ...) hashmap?)
     (tags pure))
    ((name . "hashmap-delete!")
     (signature lambda ((hashmap? hashmap) key ...) hashmap?)
     (tags pure))
    ((name . "hashmap-delete-all")
     (signature lambda ((hashmap? hashmap) (list? keys)) hashmap?)
     (tags pure))
    ((name . "hashmap-delete-all!")
     (signature lambda ((hashmap? hashmap) (list? keys)) hashmap?)))
  (desc . "The hashmap-delete procedure returns a newly allocated hashmap containing all the associations of the hashmap hashmap except for any whose keys are equal (in the sense of hashmap's comparator) to one or more of the keys. Any key that is not equal to some key of the hashmap is ignored.
The hashmap-delete! procedure is the same as hashmap-delete, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap.
The hashmap-delete-all and hashmap-delete-all! procedures are the same as hashmap-delete and hashmap-delete!, respectively, except that they accept a single argument which is a list of keys whose associations are to be deleted."))
 ((name . "hashmap-intern")
  (signature
   lambda
   ((hashmap? hashmap) key (procedure? failure))
   (values hashmap? *))
  (subsigs (failure (lambda () *)))
  (tags pure)
  (desc . "Extracts the value associated to key in the hashmap hashmap, and returns hashmap and the value as two values. If key is not contained in hashmap, failure is invoked on no arguments. The procedure then returns two values, a newly allocated hashmap that uses the same comparator as the hashmap and contains all the associations of hashmap, and in addition a new association hashmap key to the result of invoking failure, and the result of invoking failure."))
 ((name . "hashmap-intern!")
  (signature
   lambda
   ((hashmap? hashmap) key (procedure? failure))
   (values hashmap? *))
  (subsigs (failure (lambda () *)))
  (desc . "The hashmap-intern! procedure is the same as hashmap-intern, except that it is permitted to mutate and return the hashmap argument as its first value rather than allocating a new hashmap."))
 ((name . "hashmap-update")
  (signature
   case-lambda
   (((hashmap? hashmap) key (procedure? updater)) hashmap?)
   (((hashmap? hashmap) key (procedure? updater) (procedure? failure))
    hashmap?)
   (((hashmap? hashmap)
     key
     (procedure? updater)
     (procedure? failure)
     (procedure? success))
    hashmap?))
  (subsigs
   (updater (lambda (value) *))
   (failure (lambda () *))
   (success (lambda (value) *)))
  (tags pure)
  (desc . "Semantically equivalent to, but may be more efficient than, the following code
(hashmap-set hashmap key (updater (hashmap-ref hashmap key failure success)))"))
 ((name . "hashmap-update!")
  (signature
   case-lambda
   (((hashmap? hashmap) key (procedure? updater)) hashmap?)
   (((hashmap? hashmap) key (procedure? updater) (procedure? failure))
    hashmap?)
   (((hashmap? hashmap)
     key
     (procedure? updater)
     (procedure? failure)
     (procedure? success))
    hashmap?))
  (subsigs
   (updater (lambda (value) *))
   (failure (lambda () *))
   (success (lambda (value) *)))
  (desc . "The hashmap-update! procedure is the same as hashmap-update, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap. "))
 ((name . "hashmap-update/default")
  (signature
   lambda
   ((hashmap? hashmap) key (procedure? updater) default)
   hashmap?)
  (subsigs (updater (lambda (value) *)))
  (tags pure)
  (desc . "Semantically equivalent to, but may be more efficient than, the following code
(hashmap-set hashmap key (updater (hashmap-ref/default hashmap key default)))"))
 ((name . "hashmap-update!/default")
  (signature
   lambda
   ((hashmap? hashmap) key (procedure? updater) default)
   hashmap?)
  (subsigs (updater (lambda (value) *)))
  (desc . "The hashmap-update!/default procedure is the same as hashmap-update/default, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap."))
 ((name . "hashmap-pop")
  (signature
   case-lambda
   (((hashmap? hashmap)) (values hashmap? * *))
   (((hashmap? hashmap) (procedure? failure)) (values hashmap? * *)))
  (subsigs (failure (lambda () (values hashmap? * *))))
  (tags pure)
  (desc . "The hashmap-pop procedure exported from (srfi 146 hash) chooses arbitrary association from hashmap and returns three values, a newly allocated hashmap that uses the same comparator as hashmap and contains all associations of hashmap except the chosen one, and the key and the value of the chosen association. If hashmap contains no association and failure is supplied, then failure is invoked in tail context on no arguments and its values returned. Otherwise, it is an error."))
 ((name . "hashmap-pop!")
  (signature
   case-lambda
   (((hashmap? hashmap)) (values hashmap? * *))
   (((hashmap? hashmap) (procedure? failure)) (values hashmap? * *)))
  (subsigs (failure (lambda () (values hashmap? * *))))
  (desc . "The hashmap-pop! procedure is the same as hashmap-pop, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap."))
 ((name . "hashmap-search")
  (signature
   lambda
   ((hashmap? hashmap) key (procedure? failure) (procedure? success))
   (values hashmap? *))
  (subsigs
   (failure (lambda ((procedure? insert) (procedure? ignore)) *))
   (insert (lambda (value obj) *))
   (ignore (lambda (obj) *))
   (success (lambda (key value (procedure? update) (procedure? remove)) *))
   (update (lambda (new-key new-value obj) *))
   (remove (lambda (obj) *)))
  (tags pure)
  (desc . "The hashmap hashmap is searched in arbitrary order for an association with key key. If it is not found, then the failure procedure is tail-called with two continuation arguments, insert and ignore, and is expected to tail-call one of them. If an association with key key is found, then the success procedure is tail-called with the matching key of hashmap, the associated value, and two continuations, update and remove, and is expected to tail-call one of them.
It is an error if the continuation arguments are invoked, but not in tail position in the failure and success procedures. It is also an error if the failure and success procedures return to their implicit continuation without invoking one of their continuation arguments.
The effects of the continuations are as follows (where obj is any Scheme object):
* Invoking (insert value obj) causes a hashmap to be newly allocated that uses the same comparator as the hashmap hashmap and contains all the associations of hashmap, and in addition a new association hashmap key to value.
* Invoking (ignore obj) has no effects; in particular, no new hashmap is allocated (but see below).
* Invoking (update new-key new-value obj) causes a hashmap to be newly allocated that uses the same comparator as the hashmap and contains all the associations of hashmap, except for the association with key key, which is replaced by a new association hashmap new-key to new-value.
* Invoking (remove obj) causes a hashmap to be newly allocated that uses the same comparator as the hashmap and contains all the associations of hashmap, except for the association with key key.

In all cases, two values are returned: the possibly newly allocated hashmap and obj."))
 ((name . "hashmap-search!")
  (signature
   lambda
   ((hashmap? hashmap) key (procedure? failure) (procedure? success))
   (values hashmap? *))
  (subsigs (failure (lambda ((procedure? insert) (procedure? ignore)) *))
   (insert (lambda (value obj) *))
   (ignore (lambda (obj) *))
   (success (lambda (key value (procedure? update) (procedure? remove)) *))
   (update (lambda (new-key new-value obj) *))
   (remove (lambda (obj) *)))
  (desc . "The hashmap-search! procedure is the same as hashmap-search, except that it is permitted to mutate and return the hashmap argument rather than allocating a new hashmap."))
 ((name . "hashmap-size")
  (signature lambda ((hashmap? hashmap)) integer?)
  (tags pure)
  (desc . "Returns the number of associations in hashmap as an exact integer."))
 ((name . "hashmap-find")
  (signature
   lambda
   ((procedure? predicate) (hashmap? hashmap) (procedure? failure))
   (values * *))
  (subsigs (predicate (lambda (key value) boolean?)) (failure (lambda () *)))
  (tags pure)
  (desc . "Returns arbitrary association of the hashmap hashmap consisting of a key and value as two values such that predicate returns a true value when invoked with key and value as arguments, or the result of tail-calling failure with no arguments if there is none. There are no guarantees how many times and with which keys and values predicate is invoked."))
 ((name . "hashmap-count")
  (signature lambda ((procedure? predicate) (hashmap? hashmap)) integer?)
  (subsigs (predicate (lambda (key value) boolean?)))
  (tags pure)
  (desc . "Returns the number of associations of the hashmap hashmap that satisfy predicate (in the sense of hashmap-find) as an exact integer. There are no guarantees how many times and with which keys and values predicate is invoked."))
 ((name . "hashmap-any?")
  (signature lambda ((procedure? predicate) (hashmap? hashmap)) boolean?)
  (subsigs (predicate (lambda (key value) boolean?)))
  (tags pure)
  (desc . " Returns #t if any association of the hashmap hashmap satisfies predicate (in the sense of hashmap-find), or #f otherwise. There are no guarantees how many times and with which keys and values predicate is invoked."))
 ((name . "hashmap-every?")
  (signature lambda ((procedure? predicate) (hashmap? hashmap)) boolean?)
  (subsigs (predicate (lambda (key value) boolean?)))
  (tags pure)
  (desc . "Returns #t if every association of the hashmap hashmap satisfies predicate (in the sense of hashmap-find), or #f otherwise. There are no guarantees how many times and with which keys and values predicate is invoked."))
 ((name . "hashmap-keys")
  (signature lambda ((hashmap? hashmap)) list?)
  (tags pure)
  (desc . "Returns a newly allocated list of all the keys in arbitrary order in the hashmap hashmap."))
 ((name . "hashmap-values")
  (signature lambda ((hashmap? hashmap)) list?)
  (tags pure)
  (desc . "Returns a newly allocated list of all the values in arbitrary order of the keys in the hashmap hashmap. "))
 ((name . "hashmap-entries")
  (signature lambda ((hashmap? hashmap)) (values list? list?))
  (tags pure)
  (desc . "Returns two values, a newly allocated list of all the keys in the hashmap hashmap, and a newly allocated list of all the values in the hashmap hashmap in arbitrary but consistent order."))
 ((name . "hashmap-map")
  (signature
   lambda
   ((procedure? proc) (comparator? comparator) (hashmap? hashmap))
   hashmap?)
  (subsigs (proc (lambda (key value) (values * *))))
  (tags pure)
  (desc . "Applies proc, which returns two values, on two arguments, the key and value of each association of hashmap in arbitrary order and returns a newly allocated hashmap that uses the comparator comparator, and which contains the results of the applications inserted as keys and values.
Note that, when proc defines a hashmap that is not 1:1 between the keys, some of the mapped objects may be equivalent in the sense of the comparator's equality predicate, and in this case duplicate associations are omitted as in the hashmap constructor. It is unpredictable which one will be preserved in the result."))
 ((name . "hashmap-for-each")
  (signature
   lambda
   ((procedure? proc) (comparator? comparator) (hashmap? hashmap))
   undefined)
  (subsigs (proc (lambda (key value) undefined)))
  (desc . "Invokes proc for every association in the hashmap hashmap in arbitrary order, discarding the returned values, with two arguments: the key of the association and the value of the association. Returns an unspecified value."))
 ((name . "hashmap-fold")
  (signature lambda ((procedure? proc) nil (hashmap? hashmap)) *)
  (subsigs (proc (lambda (key value state) *)))
  (tags pure)
  (desc . "Invokes proc for each association of the hashmap hashmap in arbitrary order with three arguments: the key of the association, the value of the association, and an accumulated result of the previous invocation. For the first invocation, nil is used as the third argument. Returns the result of the last invocation, or nil if there was no invocation."))
 ((name . "hashmap-map->list")
  (signature lambda ((procedure? proc) (hashmap? hashmap)) list?)
  (subsigs (proc (lambda (key value) *)))
  (tags pure)
  (desc . "Calls proc for every association in arbitrary order in the hashmap hashmap with two arguments: the key of the association and the value of the association. The values returned by the invocations of proc are accumulated into a list, which is returned."))
 ((name . "hashmap-filter")
  (signature lambda ((procedure? predicate) (hashmap? hashmap)) hashmap?)
  (subsigs (predicate (lambda (key value) boolean?)))
  (tags pure)
  (desc . "Returns a newly allocated hashmap with the same comparator as the hashmap hashmap, containing just the associations of hashmap that satisfy predicate (in the sense of hashmap-find)."))
 ((name . "hashmap-filter!")
  (signature lambda ((procedure? predicate) (hashmap? hashmap)) hashmap?)
  (subsigs (predicate (lambda (key value) boolean?)))
  (desc . "A linear update procedure that returns a hashmap containing just the associations of hashmap that satisfy predicate."))
 ((name . "hashmap-remove")
  (signature lambda ((procedure? predicate) (hashmap? hashmap)) hashmap?)
  (subsigs (predicate (lambda (key value) boolean?)))
  (tags pure)
  (desc . "Returns a newly allocated hashmap with the same comparator as the hashmap hashmap, containing just the associations of hashmap that do not satisfy predicate (in the sense of hashmap-find)."))
 ((name . "hashmap-remove!")
  (signature lambda ((procedure? predicate) (hashmap? hashmap)) hashmap?)
  (subsigs (predicate (lambda (key value) boolean?)))
  (desc . "A linear update procedure that returns a hashmap containing just the associations of hashmap that do not satisfy predicate."))
 ((name . "hashmap-partition")
  (signature
   lambda
   ((procedure? predicate) (hashmap? hashmap))
   (values hashmap? hashmap?))
  (subsigs (predicate (lambda (key value) boolean?)))
  (tags pure)
  (desc . "Returns two values: a newly allocated hashmap with the same comparator as the hashmap hashmap that contains just the associations of hashmap that satisfy predicate (in the sense of hashmap-find), and another newly allocated hashmap, also with the same comparator, that contains just the associations of hashmap that do not satisfy predicate."))
 ((name . "hashmap-partition!")
  (signature
   lambda
   ((procedure? predicate) (hashmap? hashmap))
   (values hashmap? hashmap?))
  (subsigs (predicate (lambda (key value) boolean?)))
  (desc . "A linear update procedure that returns two hashmaps containing the associations of hashmap that do and do not, respectively, satisfy predicate."))
 ((name . "hashmap-copy")
  (signature lambda ((hashmap? hashmap)) hashmap?)
  (tags pure)
  (desc . "Returns a newly allocated hashmap containing the associations of the hashmap hashmap, and using the same comparator."))
 ((name . "hashmap->alist")
  (signature lambda ((hashmap? hashmap)) list?)
  (tags pure)
  (desc . "Returns a newly allocated association list containing the associations of the hashmap in arbitrary order. Each association in the list is a pair whose car is the key and whose cdr is the associated value."))
 ((name . "alist->hashmap")
  (signature lambda ((comparator? comparator) (list? alist)) hashmap?)
  (tags pure)
  (desc . "Returns a newly allocated hashmap, created as if by hashmap using the comparator comparator, that contains the associations in the list, which consist of a pair whose car is the key and whose cdr is the value. Associations earlier in the list take precedence over those that come later."))
 ((name . "alist->hashmap!")
  (signature lambda ((hashmap? hashmap) (list? alist)) hashmap?)
  (desc . "A linear update procedure that returns a hashmap that contains the associations of both hashmap and alist. Associations in the hashmap and those earlier in the list take precedence over those that come later."))
 ((name . "hashmap=?")
  (signature
   lambda
   ((comparator? comparator) (hashmap? hashmap1) (hashmap? hashmap2) ...)
   boolean?)
  (tags pure)
  (desc . "Returns #t if each hashmap hashmap contains the same associations, and #f otherwise.
Furthermore, it is explicitly not an error if hashmap=? is invoked on hashmaps that do not share the same (key) comparator. In that case, #f is returned. "))
 ((name . "hashmap<?")
  (signature
   lambda
   ((comparator? comparator) (hashmap? hashmap1) (hashmap? hashmap2) ...)
   boolean?)
  (tags pure)
  (desc . "Returns #t if the set of associations of each hashmap hashmap other than the last is a proper subset of the following hashmap, and #f otherwise."))
 ((name . "hashmap>?")
  (signature
   lambda
   ((comparator? comparator) (hashmap? hashmap1) (hashmap? hashmap2) ...)
   boolean?)
  (tags pure)
  (desc . "Returns #t if the set of associations of each hashmap hashmap other than the last is a proper superset of the following hashmap, and #f otherwise."))
 ((name . "hashmap<=?")
  (signature
   lambda
   ((comparator? comparator) (hashmap? hashmap1) (hashmap? hashmap2) ...)
   boolean?)
  (tags pure)
  (desc . "Returns #t if the set of associations of each hashmap hashmap other than the last is a subset of the following hashmap, and #f otherwise."))
 ((name . "hashmap>=?")
  (signature
   lambda
   ((comparator? comparator) (hashmap? hashmap1) (hashmap? hashmap2) ...)
   boolean?)
  (tags pure)
  (desc . "Returns #t if the set of associations of each hashmap hashmap other than the last is a superset of the following hashmap, and #f otherwise."))
 ((group
    ((name . "hashmap-union")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2) ...) hashmap?)
     (tags pure))
    ((name . "hashmap-intersection")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2) ...) hashmap?)
     (tags pure))
    ((name . "hashmap-difference")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2) ...) hashmap?)
     (tags pure))
    ((name . "hashmap-xor")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2)) hashmap?)
     (tags pure)))
  (desc . "Return a newly allocated hashmap whose set of associations is the union, intersection, asymmetric difference, or symmetric difference of the sets of associations of the hashmaps hashmaps. Asymmetric difference is extended to more than two hashmaps by taking the difference between the first hashmap and the union of the others. Symmetric difference is not extended beyond two hashmaps. When comparing associations, only the keys are compared. In case of duplicate keys (in the sense of the hashmaps comparators), associations in the result hashmap are drawn from the first hashmap in which they appear."))
 ((group
    ((name . "hashmap-union!")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2) ...) hashmap?))
    ((name . "hashmap-intersection!")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2) ...) hashmap?))
    ((name . "hashmap-difference!")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2) ...) hashmap?))
    ((name . "hashmap-xor!")
     (signature lambda ((hashmap? hashmap1) (hashmap? hashmap2)) hashmap?)))
  (desc . "These procedures are the linear update analogs of the corresponding pure functional procedures above."))
 ((name . "comparator?")
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (desc . "Type predicate for comparators as exported by (srfi 128)."))
 ((name . "make-hashmap-comparator")
  (signature lambda ((comparator? comparator)) comparator?)
  (tags pure)
  (desc . "Returns a comparator for hashmaps that is compatible with the equality predicate (hashmap=? comparator hashmap1 hashmap2). It provides an implementation-dependent hash function. The existence of comparators returned by make-hashmap-comparator allows hashmaps whose keys are hashmaps themselves, and it allows to compare hashmaps whose values are hashmaps."))
 ((name . "hashmap-comparator")
  (signature value comparator?)
  (desc . "hashmap-comparator is constructed by invoking make-hashmap-comparator on (make-default-comparator).")))
