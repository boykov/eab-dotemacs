(setq eab/el-get-sources-extra
       '(
	 package ;; already in doteab
	 projectile
	 region-bindings-mode
	 smartparens
	 smex
	 undo-tree
	 yasnippet
	 cl-lib ;; ok doteab, elpa, empty directory, magit dependency
	 anchored-transpose
	 bbdb
	 bookmark+
	 buffer-move
	 crontab-mode
	 ctable
	 dash
	 ;; dictem ;; + no melpa
	 dired+
	 dired-details
	 dired-details+
	 ebib
	 eev-current ;; + no melpa
	 elpa-mirror
	 el-expectations ;; + no elpa, 2012-10-09
	 el-get
	 el-mock
	 emacs-w3m ;; + no melpa
	 epc
	 fuzzy
	 gnuplot-mode
	 help+
	 help-fns+
	 help-macro+ ;; + no melpa
	 help-mode+
	 hexrgb
	 hy-mode
	 idle-highlight-mode ;; + no melpa
	 multifiles
	 org-link-minor-mode ;; + no melpa
	 popup
	 pydoc-info
	 python-mode
	 request
	 sudo-save ;; + no elpa
	 twittering-mode
	 wikipedia-mode ;; + no elpa
	 pymacs		;; is needs for eepitch python
	
	 ))

(setq eab/package-sources-extra
      '(
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
	cask
	pallet
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
	gist
	gh
	fuzzy-match
	feature-mode
	fakir
	elnode
	el-x
	diminish
	;; descbinds-anything
	db
	dash
	creole
	clojure-mode
	browse-kill-ring
	bm
	;; anything-obsolete
	;; anything-ipython
	;; anything-extension
	;; anything-complete
	))
