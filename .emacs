;;;; ruby and rails setup
;;; add repos
(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;; install packages
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;;; formatting
(setq ruby-deep-indent-paren nil)

;;;; keybinding changes and miscellany
; new keybindings for OSX-style delete
(global-set-key "\?" 'help-command)
(global-set-key "\C-h" 'delete-backward-char)

; keybinding for inf-ruby (may need to be installed first)
(global-set-key (kbd "C-c r r") 'inf-ruby)
