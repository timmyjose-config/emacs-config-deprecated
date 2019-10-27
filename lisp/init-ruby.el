
;;; init-ruby.el --- Ruby Emacs configuration

;; Copyright (C) 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun install-ruby-dependencies ()
  "Ruby mode prerequisites."
  (require-package 'better-defaults)
  (require-package 'ruby-electric)
  (require-package 'rbenv)
  (require-package 'inf-ruby))

(defun configure-ruby-mode ()
  "Rbenv, hook et al."
  (autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
  (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
  (setq rbenv-installation-dir "/usr/local/bin/rbenv")
  (global-rbenv-mode)
  (rbenv-use-global)
  (add-hook 'ruby-mode-hook 'ruby-electric-mode)
  (add-to-list 'auto-mode-alist
               '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist
               '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode)))

(install-ruby-dependencies)
(configure-ruby-mode)

(provide 'init-ruby)


;;; init-ruby.el ends here
