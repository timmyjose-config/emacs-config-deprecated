
;;; init-egison.el --- Egison Emacs configuration

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(autoload 'egison-mode "egison-mode" "Major mode for editing Egison source code.")

(require 'egison-mode)

(add-to-list 'auto-mode-alist '("\\.egi\\'" . egison-mode))
(electric-pair-mode 1)

(provide 'init-egison)


;;; init-egison.el ends here
