(define (analyze-permanent-set! exp)
  (let ((var (assignment-variable exp))
        (vproc (analyze (assignment-variable exp))))
    (lambda (env succeed fail)
      (vproc env
             (lambda (val fail2)
               (set-variable-value! var val env)
               (succeed 'ok
                        fail2))
             fail))))
;it should print count as 1 everytime
                          
