
;;; init-zig.el --- Zig Lang Emacs configuration

;; Copyright (C) 2019 - Timmy Jose

;; Author: Timmy Jose<zoltan.jose@gmail.com>

;;; Code:

(require 'init-elpa)
(require 'electric)
(require-package 'zig-mode)

(add-hook 'zig-mod-hook (lambda () (electric-pair-mode +1)))

(provide 'init-zig)


;;; init-zig.el ends here
