
;;; init-pony.el --- Pony Emacs configuration

;; Copyright (C) 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun install-required-packages ()
  "Install pony mode."
  (require-package 'ponylang-mode))

(defun configure-pony-mode ()
  "Set up formatting, autocompletion et al."
  (add-hook 'ponylang-mode-hook
	    (lambda ()
	      (set-variable 'indent-tabs-mode nil)
	      (set-variable 'tab-width 2))))

(install-required-packages)
(configure-pony-mode)

(provide 'init-pony)


;;; init-pony.el ends here
