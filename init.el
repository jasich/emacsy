;; Include path to executables
(add-to-list 'exec-path "/usr/local/bin/")

;; Make sure that we can load our customizations
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Looks first
(load "ui.el")

;; Load packages next
(load "packages.el")

;; Customize files & searching
(load "files.el")

;; Loading editing stuff
(load "editing.el")

(load "org-mode.el")

(load "buffers.el")


;;
;; Languages
;;
;; Clojure
(load "clojure.el")

;; Set where custom variables go
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
