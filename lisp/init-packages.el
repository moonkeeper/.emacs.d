;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa-stable" . "http://melpa.org/packages/") t)
  )

(require 'cl)

(defvar linus/packages '(
			 ;; 补全
			 company
			 ;; 主题
			 monokai-theme
			 ;; hungrey delete
			 hungry-delete
			 ;;
			 swiper
			 counsel
			 ;;
			 smartparens
			 ;;
			 js2-mode
			 ;; 运行js
			 nodejs-repl
			 ;; 使得emacs可以使用shell中的命令 比如 nodejs
			 exec-path-from-shell
			 ;; 打开buffer同时移动光标
			 popwin
			 ) "Default packages")

(setq package-selected-packages linus/packages)

(defun linus/packages-installed-p ()
  (loop for pkg in linus/packages
	when(not (package-installed-p pkg)) do (return nil)
	finally (return t)
	)
  )

(unless (linus/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg linus/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg)
      )
    )
  )

;; 设置全局补全mode
(global-company-mode t)

;; hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; config swiper for searc
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; Always start smartparens mode in js-mode.
(require 'smartparens-config)
;;(add-hook 'js-mode-hook #'smartparens-mode)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

;; config js2-mode for js file
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; config nodejs-repl
(require 'nodejs-repl)


;; config popwin3
(require 'popwin)
(popwin-mode 1)

;;load theme
(load-theme 'monokai t)

(provide 'init-packages)
