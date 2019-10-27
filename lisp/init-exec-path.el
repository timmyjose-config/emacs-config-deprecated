
;;; init-exec-path --- sets up PATH variables for macOS systems

;; Copyright (C) 2018 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)

(require-package 'exec-path-from-shell)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)

;;; init-exec-path.el ends here
