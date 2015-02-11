(require 'sauron)
(require 'sauron-org)
(require 'sauron-notifications)

(setq sauron-separate-frame nil)
(add-hook 'sauron-event-added-functions
	  (lambda (origin prio msg &optional props)
	    (notifications-notify :title "Sauron" :body msg)))

