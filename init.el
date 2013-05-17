;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")

; font size
(set-face-attribute 'default nil :height 100)

; Set some mac keys
;(setq mac-option-modifier nil
;      mac-command-modifier 'meta
;      x-select-enable-clipboard t
;)

;; Disable paredit
(remove-hook 'clojure-mode-hook #'enable-paredit-mode)

;; Add linenumbers
(add-hook 'clojure-mode-hook (lambda ()
                                     (global-linum-mode 1)))
