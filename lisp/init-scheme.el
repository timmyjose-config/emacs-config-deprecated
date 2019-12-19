
;;; init-scheme.el --- Scheme Emacs configuration.

;; Copyright (C) 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun require-packages ()
  "Install packages needed for Common Lisp Mode."
  (require-package 'geiser))

(defun configure-geiser ()
  "Setup Geiser."
  (require 'geiser))

(defun geiser-save ()
  (interactive)
  (geiser-repl--write-input-ring))

(require-packages)
(configure-geiser)

(provide 'init-scheme)

;;; init-scheme.el ends here
