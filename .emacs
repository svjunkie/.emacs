(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

# new keybindings for OSX-style delete
(global-set-key "\?" 'help-command)
(global-set-key "\C-h" 'delete-backward-char)
