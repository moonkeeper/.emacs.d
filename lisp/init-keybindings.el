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

;; solidity
(define-key solidity-mode-map (kbd "C-c C-g") 'solidity-estimate-gas-at-point)

;;indent-buffer
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer')

(provide 'init-keybindings)
