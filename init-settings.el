;;; init-settings --- initial settings for Stark Editors
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;; ===============================================
;;; Code:


;; Theme
(defvar stark-theme 'dracula)

;; Setup Font
(defvar stark-ensure-source-code-pro t "Ensure Source Code Pro font is installed.")
(defvar stark-default-font "Source Code Pro")
(defvar stark-default-font-height 140)

;; Tab width
(defvar stark-default-tab-width 4)

;; NyanCat - active Nyan cat on the modeline
(defvar stark-active-nyan-cat nil)

(provide 'stark-init-settings)
;;; init-settings.el ends here
