;; Place your bindings here.

;; For example:
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)


; (global-set-key [(control right)] 'forward-sentence)
;(global-set-key [(control left)] 'backward-sentence)

(global-set-key [(meta right)]   'forward-sexp)
(global-set-key [(meta left)]   'backward-sexp)
(global-set-key [(control left)] 'backward-sexp)

(global-set-key (kbd "C-i") 'goto-line)
