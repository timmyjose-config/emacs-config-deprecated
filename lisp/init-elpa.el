
;;; init-elpa.el --- This contains the common initialisation code used by all other init files.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Commentary: Common package installation functionality used by other init files.

;;; Code:

(require 'package)

;; The following GC optimisation was taken from https://github.com/jonatack/dotfiles/blob/master/emacs
;; Turn off GC during Emacs startup

(setq gc-cons-threshold most-positive-fixnum)

;; Resume GC after startup with 50 MB threshold, sacrificing memory for speed
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 50 1000 1000))))

;; Just in case
;; package-refresh-contents)

(defun require-package (package)
  "Install a PACKAGE if not already installed."
  (if (package-installed-p package)
      t
    (progn
      (unless (assoc package package-archive-contents)
	(package-refresh-contents))
      (package-install package))))

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

(provide 'init-elpa)

	
;;; init-elpa.el ends here
