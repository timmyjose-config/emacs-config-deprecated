
;;; init-haskell.el --- Haskell Emacs configuration

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun require-haskell-packages ()
  "Install the required Haskell packages."
  (require-package 'haskell-mode)
  (require-package 'yasnippet)
  (require-package 'haskell-snippets))

(defun configure-hooks ()
  "Set up hooks for Haskell Mode."
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  (add-hook 'haskell-mode-hook 'yas-minor-mode))

(require-haskell-packages)
(configure-hooks)

(provide 'init-haskell)

;;; init-haskell.el ends here
  

