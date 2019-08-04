;;org-mode
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/job/schedule"))
;; 开启org-mode export markdown
(setq org-export-backends (quote (ascii html icalendar latex md)))

(provide 'init-org)
