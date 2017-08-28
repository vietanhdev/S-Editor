;;; stark-ui --- user interface for Stark Editor
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: User Interface Setup
;; ===============================================


;;; Code:

;; Turn off menubar, toolbar, scollbar
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Start Emacs in maximized window mode
(toggle-frame-maximized)


;; Smooth Scrolling and attractive mode (look like Sublime Text)
;; From 'sublimity' package
(require 'sublimity-scroll)
;; (require 'sublimity-map) ;; experimental
(require 'sublimity-attractive)
(sublimity-mode 1)

;; Word wrap
(global-visual-line-mode t)
  

;; Tab width
(setq tab-width 4)

;; Load editor theme
(require 'dracula-theme)
(load-theme 'dracula t)

;; Display line number when programming
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d \u2502")

;; Display paren (highlight matching brackets)
(show-paren-mode 1)
(setq show-paren-delay 0)


;; Confirm y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)


(require 'stark-modeline)


;; Setup some UI elements which have dependencies
(add-hook 'after-init-hook 'stark-load-ui-after-startup)
(defun stark-load-ui-after-startup ()
	(require 'stark-font-installer)

	;; You need to run `M-x all-the-icons-install-fonts` to install all needed icon fonts.
	;; See: https://github.com/domtronn/all-the-icons.el
	(stark-ensure-icon-fonts)
	(require 'all-the-icons)

	;; Set font, fontsize, tab-width
	;; This configuration use "Source Code Pro" as default font. Please install this font if needed.
	;; Install Source Code Pro font
	(defun font-exists-p (font) "check if font exists" (if (null (x-list-fonts font)) nil t))
	(unless (font-exists-p "Source Code Pro")
	  (stark-install-default-font))
	(set-face-attribute 'default nil
	                    :family "Source Code Pro"
	                    :height 160
	                    :weight 'normal
	                    :width 'normal)

	;; Display a directory tree view on the left side
	(require 'neotree)
	(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

  )



(provide 'stark-ui)
;;; stark-ui.el ends here
