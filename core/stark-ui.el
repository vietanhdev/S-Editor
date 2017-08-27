;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: User Interface Setup
;; ===============================================


;; Smooth Scrolling and attractive mode (look like Sublime Text)
(use-package sublimity
  :config
  (require 'sublimity-scroll)
  ;; (require 'sublimity-map) ;; experimental
  (require 'sublimity-attractive)
  (sublimity-mode 1)
  )

;; Word wrap
(global-visual-line-mode t)
  
;; Turn off menubar, toolbar, scollbar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Set font, fontsize, tab-width
;; This configuration use "Source Code Pro" as default font. Please install this font if needed.
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 160
                    :weight 'normal
                    :width 'normal)
(setq tab-width 4)

;; Load editor theme
(use-package monokai-theme
  :config (load-theme 'monokai t))

;; Load Icons
;; You need to run `M-x all-the-icons-install-fonts` to install all needed icon fonts.
;; See: https://github.com/domtronn/all-the-icons.el
(use-package all-the-icons)

;; Display line number when programming
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d \u2502")

;; Display paren (highlight matching brackets)
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Display a directory tree view on the left side
(use-package neotree
 :config (progn
	  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
 :bind ("C-x n o" . neotree-toggle))

;; Confirm y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; nyan-mode Stark edition
;; A customized package from nyan-mode
(require 'nyan-mode-stark)
(nyan-mode)


(provide 'stark-ui)
