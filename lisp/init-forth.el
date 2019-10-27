
;;; init-forth.el --- Forth Emacs configuration

;; Copyright (C) 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

;;; disable electric-pair-mode to avoid indentation issues
(electric-pair-mode -1)

(require-package 'forth-mode)

(provide 'init-forth)


;;; init-forth.el ends here
