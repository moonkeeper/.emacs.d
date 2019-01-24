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

(provide 'init-better-defaults)
