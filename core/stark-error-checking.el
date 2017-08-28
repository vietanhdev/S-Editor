;;; stack-error-checking --- check syntax, word-use
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Programming error checking,
;; 			   Word-use checking for English
;; ===============================================

;;; Code:

;; Flycheck
;; Realtime error checking while programming
(require 'flycheck)
(global-flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save))

;; Flyspell
;; Spell checking
(setq ispell-program-name stark-ispell-path)
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))
(dolist (hook '(markdown-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))


(provide 'stark-error-checking)
;;; stark-error-checking ends here
