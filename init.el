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

(remove-hook 'nrepl-mode-hook #'enable-paredit-mode)
(remove-hook 'nrepl-interaction-mode-hook #'enable-paredit-mode)

(remove-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(remove-hook 'M-mode-hook #'enable-paredit-mode)




;; Add linenumbers
(add-hook 'clojure-mode-hook (lambda () (global-linum-mode 1)))

;; colors
(load-theme 'deeper-blue t)


(defun nrepl-reset ()
  (interactive)
  (set-buffer "*nrepl*")
  (goto-char (point-max))
  (insert "(use 'system)")
  (nrepl-return)
  (insert "(system/reset)")
  (nrepl-return))

(global-set-key (kbd "C-c C v") 'nrepl-reset)

(defun setup-windows ()
  "Sets up asome windows"
  (interactive)
  (delete-other-windows)
;  (switch-to-buffer "my-upper-window")
  (split-window-below)
  (other-window 1)
  (switch-to-buffer "*nrepl-server*")
  (split-window-right)
  (switch-to-buffer "*nrepl*"))

(global-set-key (kbd "C-c C-v") 'nrepl-reset)
(global-set-key (kbd "C-c C-s") 'setup-windows)
