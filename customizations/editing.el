;; Enable autocomplete with company mode
(global-company-mode)

;; Cleanup whitepspace
(add-hook 'before-save-hook 'whitespace-cleanup)

;; I love being able to "Open above" the current line
(defun smart-open-line-above ()
  "Insert an empty line above the current line. Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(defun smart-open-line-below ()
  "Insert an empty line below the current line. Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent)
  (indent-according-to-mode))

(global-set-key [(control return)] 'smart-open-line-above)
(global-set-key [(control shift return)] 'smart-open-line-below)

;; Navigate up and down
(global-set-key [(super down)] 'end-of-buffer)
(global-set-key [(super up)]   'beginning-of-buffer)

(defun comment-dwim-line (&optional arg)
  "ARG Replacement for the `comment-dwim` command.  If no region is selected and current
line is not blank and we are not at the end of the line, then comment current line.
Replaces default behaviour of `comment-dwim`, when it inserts comment at the end of the
line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))

;; Comment/Uncomment with cmd-s
(global-set-key (kbd "s-/") 'comment-dwim-line)

(require 'editorconfig)
(editorconfig-mode 1)


(require 'smartparens-config)
(smartparens-global-mode)
