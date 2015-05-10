;;; eab-kbd-layer0.el --- 

;; Copyright (C) 2010-2015 Evgeny Boykov
;;
;; Author: artscan@list.ru
;; Keywords: 
;; Requirements: 
;; Status: not intended to be distributed yet

;; (require 'org)
(require 'kmacro)

(defvar eab/temacs-map (make-sparse-keymap)
  "Keymap for console temacs.")

(define-key eab/temacs-map (kbd "H") 'org-clock-in)
(define-key eab/temacs-map (kbd "C-h") 'org-clock-out)
(define-key eab/temacs-map (kbd "c") 'org-store-link)
(define-key eab/temacs-map (kbd "M-c") 'org-copy-special)
(define-key eab/temacs-map (kbd "M-x") 'org-cut-special)
(define-key eab/temacs-map (kbd "M-v") 'org-paste-special)
(define-key eab/temacs-map (kbd "p") 'org-priority-up)
(define-key eab/temacs-map (kbd "i") 'org-metaup)
(define-key eab/temacs-map (kbd "k") 'org-metadown)
(define-key eab/temacs-map (kbd "j") 'org-metaleft)
(define-key eab/temacs-map (kbd "l") 'org-metaright)
(define-key eab/temacs-map (kbd "<backtab>") 'org-content)
(define-key eab/temacs-map (kbd "M-k") 'org-shiftdown)
(define-key eab/temacs-map (kbd "M-i") 'org-shiftup)
(define-key eab/temacs-map (kbd "M-j") 'org-shiftleft)
(define-key eab/temacs-map (kbd "M-l") 'org-shiftright)
(define-key eab/temacs-map (kbd "K") 'org-shiftmetadown) ;; temacs
(define-key eab/temacs-map (kbd "I") 'org-shiftmetaup)
(define-key eab/temacs-map (kbd "J") 'org-shiftmetaleft)
(define-key eab/temacs-map (kbd "L") 'org-shiftmetaright)
(define-key eab/temacs-map (kbd "RET") 'org-meta-return)
(define-key eab/temacs-map (kbd "C-<return>") 'org-insert-heading-respect-content)
(define-key eab/temacs-map (kbd "C-j") 'org-insert-heading-respect-content)
(define-key eab/temacs-map (kbd "C-M-j") 'org-insert-heading-respect-content)
(define-key eab/temacs-map (kbd "o") 'org-open-at-point)
(define-key eab/temacs-map (kbd "'") 'org-edit-special) ;; temacs

(define-key eab/temacs-map (kbd "C-h") 'nil)
(define-key eab/temacs-map (kbd "C-s") 'nil)
(define-key eab/temacs-map (kbd "b") 'nil)
(define-key eab/temacs-map (kbd "w") 'whitespace-mode)
(define-key eab/temacs-map (kbd "W") 'subword-mode)
(define-key eab/temacs-map (kbd "C-l") 'recenter-top-bottom)
(define-key eab/temacs-map (kbd "a") 'append-to-buffer)
(define-key eab/temacs-map (kbd "m") 'kmacro-keymap)
(define-key eab/temacs-map (kbd ",") 'kmacro-end-or-call-macro-repeat) ;; temacs
(define-key eab/temacs-map (kbd "x") 'kmacro-keymap)
(define-key eab/temacs-map (kbd "M-a") 'eval-expression)  ;; temacs
(define-key eab/temacs-map (kbd "u") 'rename-uniquely)
(define-key eab/temacs-map (kbd "S") 'toggle-truncate-lines) ;; temacs
(define-key eab/temacs-map (kbd "d") 'toggle-debug-on-error)
(define-key eab/temacs-map (kbd "M-f") 'ispell-change-dictionary)
(define-key eab/temacs-map (kbd "F") 'flyspell-mode)

;; (global-set-key (kbd "C-y") 'helm-complex-command-history)
;; (global-set-key (kbd "C-y") eab/temacs-map)
(global-set-key (kbd "C-l") eab/temacs-map)

(global-set-key (kbd "s-o") 'org-open-at-point)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c C-M-p") 'org-open-at-point-global)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c r") 'org-capture)
(global-set-key (kbd "C-x C-M-p") 'org-open-at-point-global)
(global-set-key (kbd "s-c") 'org-store-link)
(global-set-key (kbd "s-H") 'org-clock-in)
(global-set-key (kbd "C-s-h") 'org-clock-out)
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "M-a") 'execute-extended-command)
(global-set-key (kbd "C-t") 'transpose-sexps)
(global-set-key (kbd "M-m") 'forward-sexp)
(global-set-key (kbd "M-n") 'backward-sexp)
(global-set-key (kbd "M-q") 'kill-buffer-and-window)
(global-set-key (kbd "C-i") 'indent-for-tab-command) ;; for TAB
(global-set-key (kbd "C-m") 'newline) ;; for RET
(global-set-key (kbd "C-@") 'set-mark-command)
(global-set-key (kbd "C-M-:") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-;") 'isearch-forward-regexp)
(global-set-key (kbd "C-S-a") 'eval-expression) ;; temacs
(global-set-key (kbd "C-S-b") 'select-frame-by-name)
(global-set-key (kbd "C-S-s") 'write-file)  ;; temacs
(global-set-key (kbd "C-SPC") 'set-mark-command)
(global-set-key (kbd "S-SPC") 'nil)
(global-set-key (kbd "C-c M-f") 'find-file-at-point)
(global-set-key (kbd "C-h C-c") 'describe-command)
(global-set-key (kbd "C-h c") 'describe-key-briefly)
(global-set-key (kbd "C-k") 'toggle-input-method)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-s-i") 'imenu)  ;; temacs
(global-set-key (kbd "C-s-k") (lambda (ch) (interactive "c") (insert ch)))
(global-set-key (kbd "C-x C-d") 'dired-jump)
(global-set-key (kbd "C-v") 'vc-diff)
(global-set-key (kbd "C-x C-e") 'eval-defun)
(global-set-key (kbd "C-x C-k k") 'kill-region)
(global-set-key (kbd "C-x M-f") 'find-file-at-point)
(global-set-key (kbd "C-x c") 'customize-variable)
(global-set-key (kbd "C-x e") 'eval-last-sexp)
(global-set-key (kbd "C-x j") 'comment-region)
(global-set-key (kbd "C-x o") 'other-window)
(global-set-key (kbd "C-z") 'repeat)
(global-set-key (kbd "M-!") 'delete-window)
(global-set-key (kbd "s-0") 'delete-window)
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "M-%") 'query-replace-regexp)
(global-set-key (kbd "M-&") 'count-matches)
(global-set-key (kbd "M-'") 'comment-dwim)
(global-set-key (kbd "M-<") 'kmacro-start-macro)
(global-set-key (kbd "M-,") 'kmacro-end-or-call-macro)
(global-set-key (kbd "M-/") 'dabbrev-expand)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-5") 'query-replace)
(global-set-key (kbd "M-:") 'isearch-backward)
(global-set-key (kbd "M-;") 'isearch-forward)
(global-set-key (kbd "M-@") 'split-window-horizontally)
(global-set-key (kbd "M-B") 'backward-kill-sexp)
(global-set-key (kbd "M-C") 'copy-all)
(global-set-key (kbd "M-H") 'move-end-of-line)
(global-set-key (kbd "M-I") 'scroll-down)
(global-set-key (kbd "M-J") 'beginning-of-buffer)
(global-set-key (kbd "M-K") 'scroll-up)
(global-set-key (kbd "M-L") 'end-of-buffer)
(global-set-key (kbd "M-M") 'end-of-defun)
(global-set-key (kbd "M-N") 'beginning-of-defun)
(global-set-key (kbd "M-O") 'forward-paragraph)
(global-set-key (kbd "C-S-SPC") 'mark-defun)
(global-set-key (kbd "M-S-SPC") 'mark-paragraph)
(global-set-key (kbd "M-SPC") 'set-mark-command)
(global-set-key (kbd "M-U") 'backward-paragraph)
(global-set-key (kbd "M-X") 'delete-region)
(global-set-key (kbd "M-b") 'kill-sexp)
(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-e") 'backward-kill-word)
(global-set-key (kbd "M-f") 'delete-char)
(global-set-key (kbd "M-F") 'delete-backward-char)
(global-set-key (kbd "M-g") 'kill-line)
(global-set-key (kbd "M-h") 'move-beginning-of-line)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "C-M-j") 'delete-backward-char)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-o") 'forward-word)
(global-set-key (kbd "M-p") 'move-end-of-line)
(global-set-key (kbd "M-r") 'kill-word)
(global-set-key (kbd "M-u") 'backward-word)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-x") 'kill-region)
(global-set-key (kbd "s-,") 'kmacro-end-or-call-macro-repeat)
(global-set-key (kbd "s-.") nil)
(global-set-key (kbd "s-m") 'kmacro-keymap)
(global-set-key (kbd "s-a") 'append-to-buffer)

(define-key isearch-mode-map (kbd "M-p") 'nil)
(define-key isearch-mode-map (kbd "M-n") 'nil)
(define-key isearch-mode-map (kbd "M-y") 'nil)
(define-key isearch-mode-map (kbd "M-c") 'nil)
(define-key isearch-mode-map (kbd "M-s") 'nil)
(define-key isearch-mode-map (kbd "C-y") 'nil)
(define-key isearch-mode-map (kbd "C-l") 'nil)
(define-key isearch-mode-map (kbd "M-r") 'isearch-edit-string)
(define-key isearch-mode-map (kbd "C-e") 'isearch-edit-string)
(define-key isearch-mode-map (kbd "M-;") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "M-:") 'isearch-repeat-backward)
(define-key isearch-mode-map (kbd "M-v") 'isearch-yank-kill)
(define-key isearch-mode-map (kbd "M-k") 'isearch-ring-advance)
(define-key isearch-mode-map (kbd "M-i") 'isearch-ring-retreat)
(define-key isearch-mode-map (kbd "C-k") 'isearch-toggle-input-method)
(define-key isearch-mode-map (kbd "M-5") 'isearch-query-replace)

(define-key minibuffer-local-completion-map (kbd "C-r") 'nil)
(define-key minibuffer-local-completion-map (kbd "M-n") 'nil)
(define-key minibuffer-local-completion-map (kbd "M-p") 'nil)
(define-key minibuffer-local-completion-map (kbd "M-v") 'nil)
(define-key minibuffer-local-completion-map (kbd "M-s") 'nil)

(define-key minibuffer-local-map (kbd "C-q") 'quoted-insert)
(define-key minibuffer-local-map (kbd "M-;") 'isearch-backward)
;; TODO надо C-y, теперь уже C-l, везде сделать переменной
(define-key minibuffer-local-map (kbd "C-l M-i") 'previous-line)
(define-key minibuffer-local-map (kbd "C-l M-k") 'next-line)
(define-key minibuffer-local-map (kbd "M-i") 'previous-history-element)
(define-key minibuffer-local-map (kbd "M-r") 'nil)
(define-key minibuffer-local-map (kbd "M-p") 'nil)
(define-key minibuffer-local-map (kbd "M-n") 'nil)
(define-key minibuffer-local-map (kbd "M-x") 'nil)
(define-key minibuffer-local-map (kbd "M-I") 'previous-matching-history-element)
(define-key minibuffer-local-map (kbd "M-K") 'next-matching-history-element)
(define-key minibuffer-local-map (kbd "M-v") 'nil)

(define-key kmacro-keymap "m" 'kmacro-start-macro)
(define-key kmacro-keymap "," 'kmacro-end-or-call-macro-repeat)
(define-key kmacro-keymap "i" 'kmacro-insert-counter)
(define-key kmacro-keymap "s" 'kmacro-set-counter)
(define-key kmacro-keymap "v" 'insert-kbd-macro)

(provide 'eab-kbd-layer0)
