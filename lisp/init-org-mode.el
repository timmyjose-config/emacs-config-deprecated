
;;; init-org-mode.el --- Core Org Mode initialisation file.

;; Copyright 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Commentary: All the customisations for Org Mode go here.

;;; Code:

(require 'init-elpa)

(require-package 'org)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(provide 'init-org-mode)

;;; init-org-mode ends here
