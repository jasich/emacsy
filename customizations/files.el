;; Enable Projectile
(projectile-global-mode +1)

;; Setup Atom like project switching
(global-set-key (kbd "s-p") 'projectile-switch-project)

;; Setup Atom like file finding
(global-set-key (kbd "s-t") 'projectile-find-file)

;; Global project search
(global-set-key [(super shift f)] 'helm-projectile-ag)

;; Save backups to a different directory
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))

;; Put auto-save files in different directory
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; When you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
;; http://www.emacswiki.org/emacs/SavePlace
(require 'saveplace)
(setq-default save-place t)
;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "places"))

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Helm stuff
(require 'helm-config)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(helm-mode 1)

(require 'helm-projectile)
(helm-projectile-on)

;; Revert buffer after file changes, e.g. git pull
(global-auto-revert-mode)
