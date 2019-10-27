
;;; init-naviation.el --- configure common navigation functionality across modes.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(require-package 'helm)
(require-package 'helm-projectile)

(defun configure-helm ()
  "Install Helm as my tool of choice."
  (require 'helm-config)
  (require 'helm-projectile)
  (global-set-key (kbd "M-x") 'helm-M-x))

(defun configure-ielm ()
  "Setup up ielm for better Lisp REPLing."
  (setq ac-sources '(ac-source-functions
		     ac-source-variables
		     ac-source-features
		     ac-source-symbols
		     ac-source-words-in-same-mode-buffers))
  (add-to-list 'ac-modes 'inferior-emacs-lisp-mode)
  (auto-complete-mode 1))

(defun configure-windmove ()
  "Use Shift and arrow keys to navigate more intuitively."
  (when (fboundp 'windmove-default-keybindings)
    (windmove-default-keybindings)))

(configure-helm)
(add-hook 'ielm-mode-hook 'configure-ielm)

;; set-up Meta-T for helm-projectile-file-search

(global-set-key (kbd "M-t") 'helm-projectile-find-file)

;; set-up Meta-G for ripgrep search using deadgrep

(require-package 'deadgrep)
(require 'deadgrep)

(global-set-key (kbd "M-g") 'deadgrep)

(configure-windmove)

(provide 'init-navigation)

;;; init-navigation.el ends here










