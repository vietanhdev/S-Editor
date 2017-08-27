;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Package Manager
;; ===============================================

;; Load package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

; ;; Load `use-package`
; ;; This can download other packages automatically, shorten Emacs startup time
; ;; and provide a convenient way to configure packages.
; (eval-when-compile
;   (require 'use-package))
; (require 'bind-key)                ;; if you use any :bind variant

; ;; If one package cannot be found, automatically download it.
; ;; Comment this line for faster start up Emacs.
; (setq use-package-always-ensure t)

;; Load `use-package`
;; This can download other packages automatically, shorten Emacs startup time
;; and provide a convenient way to configure packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)
;; If one package cannot be found, automatically download it.
;; Comment this line for faster start up Emacs.
(setq use-package-always-ensure t)

(provide 'stark-package-manager)
