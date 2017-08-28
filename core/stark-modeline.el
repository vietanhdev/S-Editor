;;; stark-modeline --- Stark Editor modeline settings
;;; Commentary:
;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Modeline settings
;; ===============================================

;;; Code:


;; nyan-mode Stark edition
;; A customized package from nyan-mode
(require 'nyan-mode)
(nyan-mode)


;; Diminish modeline clutter
(require 'diminish)
(eval-after-load "flyspell" '(diminish 'flyspell-mode))
(diminish 'visual-line-mode)
(eval-after-load "autopair" '(diminish 'autopair-mode))
(eval-after-load "counsel" '(diminish 'ivy-mode))
(eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
(eval-after-load "company" '(diminish 'company-mode))


(provide 'stark-modeline)
;;; stark-modeline.el ends here
