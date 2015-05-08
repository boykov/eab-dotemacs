(setq eab/el-get-sources-extra
       '(
	 package ;; already in doteab
	 cl-lib ;; ok doteab, elpa, empty directory, magit dependency
	 bbdb
	 ctable
	 dash
	 ;; dictem ;; + no melpa
	 dired+
	 dired-details
	 dired-details+
	 eev-current ;; + no melpa
	 el-expectations ;; + no elpa, 2012-10-09
	 el-get
	 ;; emacs-w3m ;; + no melpa
	 epc
	 gnuplot-mode
	 help-macro+ ;; + no melpa
	 hexrgb
	 sudo-save ;; + no elpa
	 wikipedia-mode ;; + no elpa
	 pymacs		;; is needs for eepitch python
 	 org-link-minor-mode ;; + no melpa
	
	 ))

(setq eab/package-sources-extra
      '(
	elpa-mirror
	smex
	undo-tree
	yasnippet
	region-bindings-mode
	smartparens
	projectile
	ace-window
	ace-jump-buffer
	ace-link
	twittering-mode
	request
	python-mode
	pydoc-info
	popup
	idle-highlight-mode ;; + no melpa
	help+
	help-fns+
	help-mode+
	fuzzy
	el-mock
	anchored-transpose
	bookmark+
	buffer-move
	crontab-mode
	shut-up
	parsebib
	package-build
	jedi-core
	ebib
	helm-helm-commands
	dockerfile-mode
	deft
	ewmctrl
	anaphora
	connection
	ido-vertical-mode
	link
	oneonone
	emacsc
	deferred ;; depend
	paredit
	async ;; another name: emacs-async 
	org-agenda-property
	ido-at-point
	web-server
	take-off
	restclient
	wide-n
	god-mode
	fancy-narrow
	popup
	outshine
	outorg
	goto-chg
	epc
	ctable
	concurrent
	auto-complete
	python-environment
	deferred
	jedi
	ipython
	bibretrieve
	git-annex
	websocket
	org-jekyll
	pkg-info
	epl
	s
	python-info
	achievements-mode
	org-grep
	org
	f
	keyfreq
	cask ;; shut-up
	pallet ;; shut-up
	purty-mode
	flx
	guide-key
	popwin
	xml-rpc
	web
	string-edit
	smart-operator
	redo+
	pcache
	org-plus-contrib
	org-ehtml
	noflet
	minimap
	markdown-mode
	logito
	kv
	jira
	ignoramus
	ibuffer-vc
	highlight
	graphviz-dot-mode
	gist  ;; tabulated-list
	gh
	fuzzy-match
	feature-mode
	fakir ;; kv
	elnode ;; kv
	el-x
	diminish
	;; descbinds-anything
	db
	dash
	creole ;; kv
	clojure-mode
	browse-kill-ring
	bm
	;; anything-obsolete
	;; anything-ipython
	;; anything-extension
	;; anything-complete
	))
