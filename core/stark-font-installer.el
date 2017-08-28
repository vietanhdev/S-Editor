;;; stark-font-installer --- Install default font and Icon fonts
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Fonts
;; ===============================================


;;; Code:
(require 'cl-lib)

(defun stark-ensure-icon-fonts ()
  (message "%s" "Installing all-the-icons and Icon fonts...")
  (unless (package-installed-p 'all-the-icons)
    (package-refresh-contents)
    (package-install 'all-the-icons)
    (require 'all-the-icons)
    (all-the-icons-install-fonts)))

(defun stark-install-default-font ()
  (let* ((font-dest (cl-case window-system
                        (x  (concat (or (getenv "XDG_DATA_HOME")            ;; Default Linux install directories
                                        (concat (getenv "HOME") "/.local/share"))
                                    "/fonts/"))
                        (mac (concat (getenv "HOME") "/Library/Fonts/" ))
                        (ns (concat (getenv "HOME") "/Library/Fonts/" )))))  ;; Default MacOS install directory
  
  (unless (stringp font-dest)
    (message "%s" "We need to install default font. Please choose font directory.")
    (setq font-dest (read-directory-name "Font installation directory: " "~/")))
          
  (unless (file-directory-p font-dest) (mkdir font-dest t))
  (copy-directory stark-default-font-dir font-dest)
  (message "%s" "Default font was coppied. Please wait! Updating font cache...")
  (shell-command (format "fc-cache -f -v"))
  (message "%s" "Default font was successfully installed!")

  )
)

(provide 'stark-font-installer)
;;; stark-font-installer.el ends here