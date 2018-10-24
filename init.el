;; Make sure that we can load our customizations
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Looks first
(load "ui.el")

;; Load packages
(load "packages.el")

;; Customize files & searching
(load "files.el")

;; Loading editing stuff
(load "editing.el")

;; Org mode
(load "org-mode.el")

;; Set where custom variables go
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
