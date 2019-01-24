;;添加路径
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)

;;
(setq ring-bell-function 'ignore)
;; 去除工具栏
(tool-bar-mode -1)
;; 去除滚动条
(scroll-bar-mode -1)
;; 取消开机换面
(setq inhibit-splash-screen t)
;; 设置光标
(setq-default cursor-type 'bar)
;; 取消备份
(setq make-backup-files nil)
(setq auto-save-default nil)

;;外部修改init.el 自动加载
(global-auto-revert-mode t)

;; 开启行号
(global-linum-mode t)
;; 定义加载初始化init.el文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 设置全局快捷键 加载init.el
(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;;org-mode
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/job/schedule"))
(global-set-key (kbd "C-c a") 'org-agenda)

;; recentf-mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;
(delete-selection-mode t)

;; 设置开启全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 设置括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;显示当前行
(global-hl-line-mode t)




(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)



;;abbrev-mode 缩写
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;;signature
					    ("8lz" "linus")
					    ))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-minimum-prefix-length 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-external-variable ((t (:foreground "dark gray")))))
