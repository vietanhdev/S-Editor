;;; stark-startup --- startup setting for Stark Editor
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Startup Options
;; ===============================================


;;; Code:

;; Maximize window on starting
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Display scratch.md file as startup message
(add-hook 'emacs-startup-hook
          (lambda ()
            

           (when (get-buffer-window "*scratch*" 'visible)
              (defvar init-working-dir default-directory) ;; save init. working dir.
              (find-file-read-only stark-scratch-file)
              (cd init-working-dir)))
          (kill-buffer "*scratch*")) ;; restore init. working dir.


(setq inhibit-startup-message t)
(setq initial-major-mode 'markdown-mode)


(provide 'stark-startup)
;;; stark-startup.el ends here
