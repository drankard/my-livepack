;; Place your bindings here.

;; For example:
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(define-key paredit-mode-map [(control shift right)]    'live-paredit-next-top-level-form)


(global-set-key [(control right)] 'forward-word)
(global-set-key [(control left)] 'backward-word)
(define-key paredit-mode-map  [ (control shift right )]   'live-paredit-forward)
; (tester (ytester))
