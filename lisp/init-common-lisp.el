
;;; init-common-lisp.el --- Common Lisp Emacs configuration.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun require-packages ()
  "Install packages needed for Common Lisp Mode."
  (require-package 'slime)
  (require-package 'ac-slime)
  (require-package 'elisp-slime-nav))


(defun configure-slime ()
  "Setup SLIME."
  (require 'ac-slime)
  (load (expand-file-name "~/quicklisp/slime-helper.el"))
  (setq inferior-lisp-program "sbcl")
  (setq slime-contribs '(slimce-fancy))
  (add-hook 'slime-mode-hook 'set-up-slime-ac)
  (add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
  (eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'slime-repl-mode))
  (eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'slime-mode))
  (load (expand-file-name "~/quicklisp/slime-helper.el"))
  (setq inferior-lisp-program "sbcl"))

(defun configure-clhs ()
  "Configure the Common Lisp Hyperspec for local usage."
  (load "~/quicklisp/clhs-use-local.el" t))

(require-packages)
(configure-slime)
(configure-clhs)

(require 'elisp-slime-nav)

(dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
  (add-hook hook 'turn-on-elisp-slime-nav-mode))

(provide 'init-common-lisp)

;;; init-common-lisp.el ends here
