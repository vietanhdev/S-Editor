;;; stack-autocomplete --- Autocomplete, Snippets, Autopair
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Autocomplete, Snippets, Autopair
;; ===============================================

;;; Code:

;; Autopair quotes, braces
(require 'autopair)
(setq autopair-autowrap t)
(autopair-global-mode 1)

;; Autocomplete
(require 'company)
(global-company-mode t)

;; Snippets
(require 'yasnippet)
(yas-global-mode 1)

;; Replace default completion frontend with Ivy
;; https://github.com/abo-abo/swiper
(require 'counsel)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(ivy-mode 1)


(provide 'stark-autocomplete)
;;; stark-autocomplete.el ends here
