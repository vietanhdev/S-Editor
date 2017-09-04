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
(defvar stark-default-font "Source Code Pro") ;; Set this value to `nil` (no quote) if you want to use default font
(defvar stark-default-font-height 120) ;; 120 means the font size is 12

;; Tab width
(defvar stark-default-tab-width 2)
(defvar python-indent-offset 4) ;; Python

;; NyanCat - active Nyan cat on the modeline
(defvar stark-active-nyan-cat nil) ;; change `nill` to `t` if you want to have Nyan Cat on modeline

;; PATHS

;; ispell path (for word-use checking)
(defvar stark-ispell-path "/usr/local/bin/ispell")
;; ## To install ispell:
;; On macOS using brew: brew install ispell
;; Ubuntu and similar: sudo apt-get update && sudo apt-get install ispell

;; jdee-server dir (for java development)
;; See: https://github.com/jdee-emacs/jdee
(defvar stark-jdee-server-dir (expand-file-name  "jdee-server" stark-dir)
  "jdee-server dir")


(provide 'stark-init-settings)
;;; init-settings.el ends here
