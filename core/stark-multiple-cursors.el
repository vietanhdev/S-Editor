;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Multiple Cursors feature
;; ===============================================


(use-package multiple-cursors
  :bind (("C-x c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)
	 ("C-S-<down-mouse-1>" . mc/add-cursor-on-click)
	 ))


(provide 'stark-multiple-cursors)
