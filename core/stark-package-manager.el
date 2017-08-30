;;; stark-package-manager --- package manager for Stark Editor
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Package Manager
;; ===============================================



(require 'cl)

;; set package-user-dir to be relative to Stark install path
(setq package-user-dir (expand-file-name "elpa" stark-dir))
(package-initialize)


;; This package list does not contain: all-the-icons, nyan-mode,  dracula-theme, sublimity, diminish
;; Other packages will be load later
(defvar stark-packages
  '(
    neotree
    key-chord
    autopair
    multiple-cursors
    magit
    company
    yasnippet
    counsel
    flycheck
    yaml-mode
    origami
   )
   
  "List of packages to ensure are installed at launch.")


(defun stark-packages-installed-p ()
  "Check if all packages in `stark-packages' are installed."
  (every #'package-installed-p stark-packages))

(defun stark-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package stark-packages)
    (add-to-list 'stark-packages package))
  (unless (package-installed-p package)
    (message "Installing package: %s" package)
    (package-install package)))

(defun stark-require-packages (packages)
  "Ensure PACKAGES are installed.  Missing packages are installed automatically."
  (mapc #'stark-require-package packages))

(define-obsolete-function-alias 'stark-ensure-module-deps 'stark-require-packages)

(defun stark-install-packages ()
  "Install all packages listed in `stark-packages'."
  (unless (stark-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Stark Editor is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (stark-require-packages stark-packages)))

;; run package installation
(stark-install-packages)

(provide 'stark-package-manager)
;;; stark-package-manager ends here
