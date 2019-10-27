;;; init-ui.el --- common UI setup.

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(defun configure-location-details ()
  "Configure current location details."
  (setq calendar-location-name "Bangalore, IN")
  (setq calendar-latitude 12.98)
  (setq calendar-longitude 77.59))

(defun require-ui-packages ()
  "Install necessary packages."
  (require-package 'theme-changer)
  (require-package 'golden-ratio))

;; If themes become too numerous, consider moving
;; this to its own init file
(defun require-themes ()
  "Install my favourite UI themes."
  (require-package 'github-theme)
  (require-package 'zenburn-theme)
  (require-package 'blackboard-theme)
  (require-package 'grandshell-theme)
  (require-package 'monokai-theme)
  (require-package 'solarized-theme)
  (require-package 'eclipse-theme)
  (require-package 'molokai-theme)
  (require-package 'nimbus-theme)
  (require-package 'green-phosphor-theme))

(defun configure-look-and-feel ()
  "Set fullscreen, disable toolbars and menubar et al."
  (setq inhibit-startup-message t)
  (setq split-height-threshold nil)
  (setq column-number-mode t)
  (toggle-frame-fullscreen)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(defun configure-basic-editing-functions ()
  "Allow mouse to be used for editing et al."
  (setq
   x-select-enable-clipboard t
   x-select-enable-primary t
   save-interprogram-paste-before-kill t
   apropos-do-all t
   mouse-yank-at-point t))

(defun configure-winner-mode ()
  "Allow maximising a particular window and reverting."
  (when (fboundp 'winner-mode)
    (winner-mode 1)))

(configure-look-and-feel)
(configure-basic-editing-functions)
(configure-winner-mode)

(require-ui-packages)
(require-themes)

(require 'theme-changer)

(configure-location-details)
(change-theme 'github 'wheatgrass)

(provide 'init-ui)

;;; init-ui.el ends here





