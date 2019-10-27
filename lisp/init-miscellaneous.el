
;;; init-miscellaneous.el --- all other basic stuff goes here.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(setq create-lockfiles nil)

;;; switch off the annoying bell
(setq ring-bell-function 'ignore)

;;; always keep files synced with the disk
(global-auto-revert-mode t)

(provide 'init-miscellaneous)

;;; init-miscellaneous.el ends here
