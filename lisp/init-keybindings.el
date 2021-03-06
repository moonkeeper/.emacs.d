;; open recent file
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; 设置全局快捷键 加载init.el
(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;;org-mode agenda
(global-set-key (kbd "C-c a") 'org-agenda)

;; swiper 
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
;; 一般 C-c开头的快捷键为用户自定义 , p = project 一般以git仓库为一个项目 f = find file
(global-set-key (kbd "C-c p f") 'counsel-git)


;;indent-buffer
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;hippie-expand enhance company-mode s=command
(global-set-key (kbd "s-/") 'hippie-expand)

;; dired bindkeys RET after load dired
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
  )


(global-set-key [f8] 'neotree-toggle)
(provide 'init-keybindings)


