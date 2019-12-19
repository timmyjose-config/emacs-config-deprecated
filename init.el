
;;; init.el --- Core Emacs initialisation file.

;; Copyright 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Commentary: This is the main init file for my Emacs configuration. It invokes other init files.

;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
(require 'init-org-mode)
(require 'init-setup)
(require 'init-company-mode)
(require 'init-exec-path)
(require 'init-ui)
(require 'init-editing)
(require 'init-navigation)
(require 'init-miscellaneous)

(require 'init-magit)
(require 'init-rust)
(require 'init-common-lisp)
(require 'init-scheme)
(require 'init-clojure)
(require 'init-haskell)
(require 'init-idris)
(require 'init-julia)
(require 'init-egison)
(require 'init-ruby)
(require 'init-zig)
(require 'init-forth)
(require 'init-groovy)
(require 'init-elixir)
(require 'init-pony)

(provide 'init)

 ;;; init.el ends here
(put 'erase-buffer 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (geiser ponylang-mode exunit alchemist elixir-mode grails-mode groovy-mode forth-mode zig-mode inf-ruby rbenv ruby-electric julia-mode idris-mode haskell-snippets haskell-mode inf-clojure clj-refactor cider clojure-mode better-defaults elisp-slime-nav ac-slime slime flycheck-rust racer company-racer cargo magit deadgrep helm-projectile helm multiple-cursors paredit flycheck auto-indent-mode rainbow-delimiters green-phosphor-theme nimbus-theme molokai-theme eclipse-theme solarized-theme monokai-theme grandshell-theme blackboard-theme zenburn-theme github-theme golden-ratio theme-changer exec-path-from-shell company use-package esup))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
