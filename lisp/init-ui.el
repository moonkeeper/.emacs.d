;; 去除工具栏
(tool-bar-mode -1)
;; 去除滚动条
(scroll-bar-mode -1)
;; 取消开机换面
(setq inhibit-splash-screen t)
;; 设置光标
(setq-default cursor-type 'bar)

;; 设置开启全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;显示当前行
(global-hl-line-mode t)

(provide 'init-ui)
