(package-initialize)


(when (memq window-system '(mac ns x))
      (setenv "LC_CTYPE" "UTF-8")
      (setenv "LC_ALL" "en_US.UTF-8")
      (setenv "LANG" "en_US.UTF-8"))

;; 定义加载初始化init.el文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;添加路径
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)
(require 'init-go)
(require 'init-python3)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)




 
















