(((name . "call-with-input-file")
  (signature lambda ((string? string) (procedure? proc)) *)
  (subsigs (proc (lambda ((input-port? port)) *)))
  (desc . "call-with-input-file, call-with-output-file It is an error if proc does not accept one argument. These procedures obtain a textual port obtained by opening the named file for input or output as if by open-input-file or open-output-file. The port and proc are then passed to a procedure equivalent to call-with-port."))
 ((name . "call-with-output-file")
  (signature lambda ((string? string) (procedure? proc)) *)
  (subsigs (proc (lambda ((output-port? port)) *)))
  (desc . "call-with-input-file, call-with-output-file It is an error if proc does not accept one argument. These procedures obtain a textual port obtained by opening the named file for input or output as if by open-input-file or open-output-file. The port and proc are then passed to a procedure equivalent to call-with-port."))
 ((name . "delete-file")
  (signature lambda ((string? filename)) undefined)
  (desc . "It is an error if filename is not a string. The delete-file procedure deletes the named file if it exists and can be deleted, and returns an unspecified value. If the file does not exist or cannot be deleted, an error that satisfies file-error? is signaled."))
 ((name . "file-exists?") (signature lambda ((string? filename)) boolean?))
 ((name . "open-binary-input-file")
  (signature lambda ((string? string)) input-port?)
  (desc . "open-input-file, open-binary-input-file Takes a string for an existing file and returns a textual input port or binary input port that is capable of delivering data from the file. If the file does not exist or cannot be opened, an error that satisfies file-error? is signaled."))
 ((name . "open-binary-output-file")
  (signature lambda ((string? string)) output-port?)
  (desc . "open-output-file, open-binary-output-file Takes a string naming an output file to be created and returns a textual output port or binary output port that is capable of writing data to a new file by that name. If a file with the given name already exists, the effect is unspecified. If the file cannot be opened, an error that satisfies file-error? is signaled."))
 ((name . "open-input-file")
  (signature lambda ((string? string)) input-port?)
  (desc . "open-input-file, open-binary-input-file Takes a string for an existing file and returns a textual input port or binary input port that is capable of delivering data from the file. If the file does not exist or cannot be opened, an error that satisfies file-error? is signaled."))
 ((name . "open-output-file")
  (signature lambda ((string? string)) output-port?)
  (desc . "open-output-file, open-binary-output-file Takes a string naming an output file to be created and returns a textual output port or binary output port that is capable of writing data to a new file by that name. If a file with the given name already exists, the effect is unspecified. If the file cannot be opened, an error that satisfies file-error? is signaled."))
 ((name . "with-input-from-file")
  (signature lambda ((string? string) (procedure? thunk)) *)
  (subsigs (thunk (lambda () *)))
  (desc . "with-input-from-file, with-output-to-file The file is opened for input or output as if by open-input-file or open-output-file, and the new port is made to be the value returned by current-input-port or current-output-port (as used by (read), (write obj ), and so forth). The thunk is then called with no arguments. When the thunk returns, the port is closed and the previous default is restored. It is an error if thunk does not accept zero arguments. Both procedures return the values yielded by thunk . If an escape procedure is used to escape from the continuation of these procedures, they behave exactly as if the current input or output port had been bound dynamically with parameterize."))
 ((name . "with-output-to-file")
  (signature lambda ((string? string) (procedure? thunk)) *)
  (subsigs (thunk (lambda () *)))
  (desc . "with-input-from-file, with-output-to-file The file is opened for input or output as if by open-input-file or open-output-file, and the new port is made to be the value returned by current-input-port or current-output-port (as used by (read), (write obj ), and so forth). The thunk is then called with no arguments. When the thunk returns, the port is closed and the previous default is restored. It is an error if thunk does not accept zero arguments. Both procedures return the values yielded by thunk . If an escape procedure is used to escape from the continuation of these procedures, they behave exactly as if the current input or output port had been bound dynamically with parameterize.")))
