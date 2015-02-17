(setq eab/el-get-sources-minimal
      '(
	eab-misc
	eab-dotemacs
	cl-lib
	ergoemacs-keybindings ;; no elpa, eab fix
	;; anything-match-plugin ;; need by anything-config
	;; anything-config
	ace-jump-mode ;; eab
	;; anything
	org-mode
	eev-current
	))

(setq eab/package-sources-minimal
      '(
	key-chord
	auto-dictionary ;; switcher for flyspell
	auto-complete ;; depend
	;; auto-complete-emacs-lisp ;; no melpa depend auto-complete
	howdoi
	ac-dabbrev
	etags-table
	etags-select
	helm
	helm-descbinds
	smart-compile
	popwin
	moz
	expand-region
	multiple-cursors
	flx-isearch
	workgroups2
	dictionary
	sauron
	magit
	;; magit-filenotify ;; needs emacs 24.4 with file-notify-support
	git-commit-mode
	git-rebase-mode
	magit-annex
	org-magit
	auctex
	org-agenda-property
	region-bindings-mode
	smex
	smartparens
	auto-install
	projectile
	flx-ido
	ido-at-point
	paredit
	grep-a-lot
	wgrep
	undo-tree
	;; workgroups
	edit-list
	yasnippet
	))
