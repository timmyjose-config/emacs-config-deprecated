
;;; init-editing.el --- common editing functionality across modes.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com

;;; Code:

(require 'init-elpa)
(require 'saveplace)

(defun require-editing-packages ()
  "Install flycheck, paredit et al."
  (require-package 'rainbow-delimiters)
  (require-package 'auto-indent-mode)
  (require-package 'flycheck)
  (require-package 'paredit))

(defun configure-basic-editing ()
  "Setup paren mode, paredit, flycheck et al."
  (define-key global-map (kbd "RET") 'newline-and-indent)
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  (show-paren-mode 1)
  (setq show-paren-delay 0)
  (global-hl-line-mode 1)
  (configure-paredit))

(defun configure-paredit ()
  "Paredit specific configuration."
  (autoload 'paredit-mode "paredit"
    "Minor mode for editing Lisps (primarily)" t)
  (add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'lisp-interactive-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'scheme-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'clojure-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'slime-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
  (add-hook 'cider-repl-mode-hook (lambda () (paredit-mode +1))))

(defun configure-auto-indent()
  "Set up auto indentation."
  (setq auto-indent-on-visit-file t))

(defun configure-backups ()
  "Set up Emacs backup location."
  (setq-default save-place t)
  (setq save-place-file (concat user-emacs-directory "places"))
  (setq backup-directory-alist `(("." . ,(concat user-emacs-directory
						 "backups"))))
  (setq auto-save-default nil))

(defun configure-indent-buffer ()
  "Set up indentation."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun enable-multiple-cursors ()
  "Support for multiple cursors."
  (require-package 'multiple-cursors)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(require-editing-packages)
(configure-basic-editing)
(configure-paredit)
(configure-auto-indent)
(configure-backups)
(configure-indent-buffer)
(enable-multiple-cursors)

(defun toggle-comment-on-line ()
  "Allow fast commenting/uncommenting."
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(global-set-key (kbd "C-;") 'toggle-comment-on-line)

(provide 'init-editing)


;;; init-editing.el ends here
