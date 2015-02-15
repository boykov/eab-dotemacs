(require 'howdoi)

;; TODO depend on auto-complete, eab/trans-path, howdoi

(defadvice kmacro-start-macro (before eab-kmacro-start activate)
  (if auto-complete-mode (call-interactively 'auto-complete-mode)))

(defadvice kmacro-end-macro (after eab-kmacro-end activate)
  (if (not auto-complete-mode) (call-interactively 'auto-complete-mode)))

(defun eab/latinize (str)
  (substring (shell-command-to-string (concat "python " eab/trans-path " \"" str "\"")) 0 -1))

(defun eab/latinize-region (start end)
  (interactive "r")
  (let ((str (filter-buffer-substring start end)))
    (kill-region start end)
    (insert (eab/latinize str))))

(defun eab/howdoi ()
  (interactive)
  (call-interactively 'howdoi-query-line-at-point-replace-by-code-snippet))
