(eval-when-compile

  (defun get-api-funcs ()
    '((open-channel 1) (open-channel 2) (open-channel 3)
      (register-blocked-handler 2)
      (start 1)
      (close 1) (close 2) (close 3)
      (error-atom 1)
      (info 2)
      (info-keys 1) (info-keys 0)
      (socket-adapter-info 2))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'amqp_connection)))

(generate-api)
