
;;; init-company-mode --- Company mode configuration for auto-completion.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(require-package 'company)
(require 'company)

(setq company-tooltip-align-annotations t)
(add-hook 'prog-mode-hook #'company-mode)
(add-hook 'after-init-hook #'global-company-mode)

(provide 'init-company-mode)

;;; init-company-mode.el ends here
