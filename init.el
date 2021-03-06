;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Init file
;; ===============================================


;; Load package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


;; No byte-compile warnings
(setq byte-compile-warnings nil)


;; Speedup Emacs
;; Decrease the number of garbage collection invocations
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


;; Scratch file
(defvar stark-scratch-file (expand-file-name "scratch.md" stark-core-dir)
  "Scratch message")


;; User custom configuration file
(defvar stark-custom-file (expand-file-name  "custom.el" stark-dir)
  "User custom file")


(defun add-subfolders-to-load (parent-dir load-list)
 "Add all level PARENT-DIR subdirs to the load path."
 (dolist (f (directory-files parent-dir))
   (let ((name (expand-file-name f parent-dir)))
     (when (and (file-directory-p name)
                (not (string-prefix-p "." f)))
       (add-to-list load-list name)
       (add-subfolders-to-load name load-list)))))


;; add Stark's directories to Emacs
(load (concat stark-dir "init-settings.el"))
(add-to-list 'load-path stark-core-dir)
(add-subfolders-to-load stark-core-dir 'load-path)
(add-to-list 'load-path stark-modules-dir)
(add-subfolders-to-load stark-modules-dir 'load-path)
(add-subfolders-to-load stark-themes-dir 'custom-theme-load-path)


;; Load settings file
(defvar stark-setting-file (expand-file-name  "init-settings.el" stark-dir))
(load stark-setting-file)
(require 'stark-init-settings)

;; Load core modules
(require 'stark-ui)
(require 'stark-startup)


;; Deplay loading
(defun stark-load-after-init ()
  (message "%s" "Loading components...")
  (require 'stark-package-manager)
  (require 'stark-autocomplete)
  (require 'stark-error-checking)
  (require 'stark-multiple-cursors)
  (require 'stark-code-folding)
  (require 'stark-keybindings)
  (require 'stark-jumping)
  (require 'stark-module-init)
  (message "%s" "Loading done!"))
(add-hook 'after-init-hook 'stark-load-after-init)


(setq custom-file stark-custom-file)
(load custom-file)
