;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Init file
;; ===============================================

;; Speedup Emacs
;; Decrease the number of garbage collection invocations

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq gc-cons-threshold 10000000)
(add-hook 'emacs-startup-hook 'my/set-gc-threshold)
(defun my/set-gc-threshold ()
  "Reset `gc-cons-threshold' to its default value."
  (setq gc-cons-threshold 800000))


;; Always load newest byte code
(setq load-prefer-newer t)


;; Default directories and files
(defvar stark-dir (file-name-directory load-file-name)
  "The root dir of the Stark editor configuration files.")
(defvar stark-core-dir (expand-file-name "core" stark-dir)
  "Core")
(defvar stark-modules-dir (expand-file-name  "modules" stark-dir)
  "Stark modules")
(defvar stark-themes-dir (expand-file-name  "themes" stark-dir)
  "Stark themes")
(defvar stark-fonts-dir (expand-file-name  "fonts" stark-dir)
  "Stark fonts")
(defvar stark-default-font-dir (expand-file-name  "SourceCodePro" stark-fonts-dir)
  "Stark default font")

;; ispell path (for word-use checking)
(defvar stark-ispell-path "/usr/local/bin/ispell")

;; User custom configuration file
(defvar stark-custom-file (expand-file-name  "custom.el" stark-dir)
  "User custom file")



(defun stark-add-subfolders-to-load-path (parent-dir)
 "Add all level PARENT-DIR subdirs to the `load-path'."
 (dolist (f (directory-files parent-dir))
   (let ((name (expand-file-name f parent-dir)))
     (when (and (file-directory-p name)
                (not (string-prefix-p "." f)))
       (add-to-list 'load-path name)
       (stark-add-subfolders-to-load-path name)))))

;; add Prelude's directories to Emacs's `load-path'
(add-to-list 'load-path stark-modules-dir)
(add-to-list 'load-path stark-core-dir)
(stark-add-subfolders-to-load-path stark-core-dir)
(stark-add-subfolders-to-load-path stark-modules-dir)
(stark-add-subfolders-to-load-path stark-themes-dir)


(message "Loading Stark Editor...")


;; Load core modules
(require 'stark-startup)
(require 'stark-ui)
(require 'stark-package-manager)
(require 'stark-autocomplete)
(require 'stark-error-checking)
(require 'stark-multiple-cursors)
(require 'stark-keybindings)
(require 'stark-module-init)


(message "Stark Editor loading done...")

(setq custom-file stark-custom-file)
(load custom-file)
