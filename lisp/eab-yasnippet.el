(require 'yasnippet)

(setq yas-key-syntaxes '("w_" "w_." "w_.()" "^ "))

(defun yas-org-very-safe-expand ()
  (let ((yas-fallback-behavior 'return-nil))
    (yas-expand)))

(add-hook 'org-mode-hook
          (lambda ()
            (make-variable-buffer-local 'yas-trigger-key)
            (setq yas-trigger-key [tab])
            (add-to-list 'org-tab-first-hook 'yas-org-very-safe-expand)
            (define-key yas-keymap [tab] 'yas-next-field)))
