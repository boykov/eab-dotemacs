(require 'smart-compile)

(setq compile-command "make ")

(defun eab/compile (&optional cmd)
  (interactive)
  (compile cmd)
  (setq compile-command "make "))

(defun eab/compile-helm ()
  (interactive)
  (let ((cmd
	 (with-temp-buffer
	   (let ((minibuffer-history-variable 'compile-history))
	     (helm-minibuffer-history))
	   (buffer-substring (point-min) (point-max)))))
    (if (not (string= cmd ""))
	(compile cmd))))

(add-to-list 'smart-compile-alist '(graphviz-dot-mode . "xdot.py %F"))
(add-to-list 'smart-compile-alist '(python-mode . "python %F"))

;; Helper for compilation. Close the compilation window if
;; there was no error at all.
(defun compilation-exit-autoclose (status code msg)
  ;; If M-x compile exists with a 0
  (when (and (eq status 'exit) (zerop code))
    ;; then bury the *compilation* buffer, so that C-x b doesn't go there
    (bury-buffer)
    ;; (quit-window nil (get-buffer-window (get-buffer "*compilation*")))
    ;; and delete the *compilation* window
    (replace-buffer-in-windows "*compilation*"))
  ;; Always return the anticipated result of compilation-exit-message-function
  (cons msg code))

;; Specify my function (maybe I should have done a lambda function)
(setq compilation-exit-message-function 'compilation-exit-autoclose)
(setq compilation-exit-message-function nil)
(setq compilation-scroll-output 't)

(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(defun eab/gr-status ()
  (interactive)
  (eab/compile (concat "gr status ")))
