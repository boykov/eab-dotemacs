;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;   		  ____ 	       	  _    _
;;		 |  _ \	 ___  ___| | _|	|_ ___ 	_ __
;;		 | | | |/ _ \/ __| |/ /	__/ _ \| '_ \
;;		 | |_| |  __/\__ \   <|	|| (_) | |_) |
;;		 |____/	\___||___/_|\_\\__\___/| .__/
;;		       	       	       	       |_|
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Desktop

(require 'desktop)

(if (or (eab/ondaemon "server") (eab/ondaemon "serverN") (eab/ondaemon "serverM"))
    (add-hook 'desktop-save-hook (lambda ()
				   ;; (eab/wg-update-all-workgroups)
				   (eab/wg-save eab/workgroups-save)
				   )))
;; see also eab-appt.el

(defun reload-dot-emacs ()
  "Save the .emacs buffer if needed, then reload .emacs."
  (interactive)
  (desktop-save (concat (eab/desktop-dir) ""))
  (let ((dot-emacs (concat user-emacs-directory "init.el")))
    (and (get-file-buffer dot-emacs)
         (save-buffer (get-file-buffer dot-emacs)))
    (load-file dot-emacs))
  (message "Re-initialized!"))
;; (desktop-read (concat (eab/desktop-dir) "")) ;; можно управлять историей между сеансами
;; (eab/wg-load (concat (eab/desktop-dir) ".emacs_workgroups"))

(defun eab/desktop-ignore-workgroups (desktop-buffer-file-name)
       "Function to ignore workgroups2 minor modes during restore of buffers"
       nil)

(add-to-list 'desktop-minor-mode-handlers
	     '(workgroups-mode . eab/desktop-ignore-workgroups))
