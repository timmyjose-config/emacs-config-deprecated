
;;; init-setup.el --- Miscellaneous setup code

;; Copyright (C) 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Commentary: Common package installation functionality used by other init files.

;;; Code:

(require 'package)

;; The following GC optimisation was taken from https://github.com/jonatack/dotfiles/blob/master/emacs
;; Turn off GC during Emacs startup

(setq gc-cons-threshold most-positive-fixnum)

;; Resume GC after startup with 50 MB threshold, sacrificing memory for speed
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 50 1000 1000))))

;; Emacs startup profiler
(require-package 'esup)

(require-package 'use-package)

(provide 'init-setup)

	
;;; init-setup.el ends here
