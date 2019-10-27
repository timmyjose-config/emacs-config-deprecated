
;;; init-clojure.el --- Clojure Emacs configuration.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun require-clojure-packages ()
  "Install packages required by Clojure Mode."
  (require-package 'better-defaults)
  (require-package 'projectile)
  (require-package 'clojure-mode)
  (require-package 'cider)
  (require-package 'clj-refactor)
  (require-package 'inf-clojure))

(defun clj-refactor-hook ()
  "Set up Clojure Mode hooks."
  (require 'clj-refactor)
  (clj-refactor-mode 1)
  (yas-minor-mode 1)
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(require-clojure-packages)
(add-hook 'clojure-mode-hook #'clj-refactor-hook)
(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)
(add-hook 'inf-clojure-mode-hook (lambda () (paredit-mode 1)))

(defun figwheel-repl ()
  "Setup ClojureScript."
  (interactive)
  (inf-clojure "lein figwheel"))

(provide 'init-clojure)

;;; init-clojure.el ends here
