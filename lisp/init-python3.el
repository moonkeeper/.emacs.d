(elpy-enable)

(setq elpy-rpc-python-command "/usr/local/bin/python3")
(setq python-shell-interpreter "/usr/local/bin/ipython3"
      python-shell-interpreter-args "--simple-prompt -c exec('__import__(\\'readline\\')') -i")


(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))


(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-python3)
