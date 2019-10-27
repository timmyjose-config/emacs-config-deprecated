
;;; init-elixir.el --- Pony Emacs configuration

;; Copyright (C) 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun install-required-packages ()
  "Install elixir mode, alchemist mode, and exunit."
  (require-package 'elixir-mode)
  (require-package 'alchemist)
  (require-package 'exunit))

(defun configure-elixir-mode ()
  "Set up formatting, autocompletion et al."
  (add-hook 'elixir-mode-hook #'lsp)
  (require 'alchemist)
  (add-hook 'alchemist-mode-hook #'company-mode)
  (add-hook 'elixir-format-hook (lambda ()
                                  (if (projectile-project-p)
                                      (setq elixir-format-arguments
                                            (list "--dot-formatter"
                                                  (concat (locate-dominating-file buffer-file-name ".formatter.exs") ".formatter.exs")))
                                    (setq elixir-format-arguments nil)))))

(install-required-packages)
(configure-elixir-mode)

(provide 'init-elixir)


;;; init-elixir.el ends here
