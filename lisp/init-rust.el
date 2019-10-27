
;;; init-rust.el --- Rust Emacs setup.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun require-rust-dependencies ()
  "Install all dependencies for Rust Mode."
  (require-package 'cargo)
  (require-package 'company)
  (require-package 'company-racer)
  (require-package 'racer)
  (require-package 'rust-mode)
  (require-package 'flycheck)
  (require-package 'flycheck-rust))

(defun configure-packages ()
  "Import required packages for Rust Mode."
  (require 'cargo)
  (require 'company)
  (require 'company-racer)
  (require 'racer)
  (require 'flycheck)
  (require 'rust-mode)
  (require 'flycheck-rust)
  (require 'electric)
  (require 'eldoc))

(defun setup ()
  "Perform common setup."
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  (setq rust-format-on-save t)
  (setq racer-cmd (concat (getenv "HOME") "/.cargo/bin/racer"))
  (setq rust-src (concat (getenv "HOME") "/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src")))

(defun setup-hooks ()
  "Configure hooks for rust-mode and racer-mode."
  (add-hook 'rust-mode-hook #'cargo-minor-mode)
  (add-hook 'racer-mode-hook #'company-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
  (add-hook 'rust-mode-hook #'company-mode)
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'rust-mode-hook (lambda () (electric-pair-mode +1)))
  (add-hook 'rust-mode-hook
	    (lambda ()
	      (local-set-key (kbd "TAB") #'company-indent-or-complete-common)))
  (add-hook 'rust-mode-hook
	    (lambda ()
	      (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))
  (add-hook 'rust-mode-hook
	    (lambda ()
	      (local-set-key (kbd "C-x <tab>") #'rust-run-clippy))))

(require-rust-dependencies)
(configure-packages)
(setup)
(setup-hooks)

(provide 'init-rust)

;;; init-rust.el ends here
