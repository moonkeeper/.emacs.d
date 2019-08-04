;;custom go ide
(require 'go-autocomplete)
(require 'go-eldoc)
(require 'go-mode)
(require 'auto-complete-config)
(require 'golint)
(ac-config-default)
(defun go-mode-setup ()
  (setq gofmt-command "goimports")
  (setq compile-command "go build -v && go test -v && go vet")
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'go-mode-setup)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(setq go-eldoc-gocode '/Users/linus/go/bin)
(provide 'init-go)
