;; Load required packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Informs Emacs of latest versions of packages and makes them available
;; for download
(when (not package-archive-contents)
  (package-refresh-contents))

;; Define list of packages that we'd like to have installed
(defvar my-packages
  '(projectile    
    helm
    helm-projectile
    helm-ag
    company
    editorconfig))

;; Get the packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


