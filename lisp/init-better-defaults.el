;;
(setq ring-bell-function 'ignore)
;; 开启行号
(global-linum-mode t)
;;外部修改init.el 自动加载
(global-auto-revert-mode t)
;; 取消备份
(setq make-backup-files nil)
(setq auto-save-default nil)
;;abbrev-mode 缩写
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;;signature
					    ("8lz" "linus")
					    ))
  ;; recentf-mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

;; 设置括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;
(delete-selection-mode t)

;;indent enhance
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region.")

	  (progn
	    (indent-buffer)
	    (message "Indented buffer."))))))

;;hippie
(setq hippie-expand-try-functions-list '(
					 try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))

;; set ask confirm yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; Dired-mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; Dired-mode make dired  using only one buffer
;; load delay
(put 'dired-find-alternate-file 'disabled nil)

;;Dired-x  open current buffer directory
(require 'dired-x)
(setq dired-dwim-target t)

;; quota
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(setq neo-theme 'icons)


(provide 'init-better-defaults)
