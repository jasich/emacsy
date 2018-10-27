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
    projectile-rails
    helm
    helm-projectile
    helm-ag
    company
    magit
    diminish
    clojure-mode
    cider
    elixir-mode
    alchemist
    editorconfig
    smartparens
    markdown-mode
    web-mode
    haml-mode
    yaml-mode
    coffee-mode
    rspec-mode
    ruby-end))

;; Get the packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
