;; Set font to Menlo 20pt
(set-frame-font "Menlo 20")

;; Don't ever ring the "bell" when I'm working
(setq ring-bell-function 'ignore)

;; Don't make me type 'yes' or 'no' fully, intead just allow 'y' or 'n'
(fset 'yes-or-no-p 'y-or-n-p)

;; Show cursor position
(column-number-mode 1)

;; Use 120 wide lines
(setq-default fill-column 120)

;; GUI specific things
(if (display-graphic-p)
  (progn
    ;; Hide the menu bar
    (menu-bar-mode -1)

    ;; Hide scroll bar
    (scroll-bar-mode -1)

    ;; Hide toolbar
    (tool-bar-mode -1)

    ;; initial window size
    (when window-system (set-frame-size (selected-frame) 120 80))))

;; Show line numbers
(global-display-line-numbers-mode)
