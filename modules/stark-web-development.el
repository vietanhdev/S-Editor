;; Autocomplete / Snippets for Web development
(use-package emmet-mode
  :defer t
  :init
  (add-hook 'css-mode-hook 'emmet-mode)
  (add-hook 'sgml-mode-hook 'emmet-mode)
  :config
  (setq-default emmet-move-cursor-between-quote t)
  :bind ("<C-return>" . emmet-expand-yas)
  )

;; Display corresponding background color for hex value in html/css
(use-package rainbow-mode
  :init
  (add-hook 'html-mode-hook 'rainbow-mode)
  (add-hook 'css-mode-hook 'rainbow-mode))

;; Javascript
(use-package js2-mode)

;; Web mode
(use-package web-mode
  :init
  (progn
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

  
  (setq web-mode-enable-auto-pairing t
     web-mode-enable-css-colorization t
     web-mode-enable-current-element-highlight t)
  ))

;; Beautify html/css/js
(use-package web-beautify
   :init
  (progn
     (eval-after-load 'js2-mode
       '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
 
     (eval-after-load 'js
       '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))
     
     (eval-after-load 'json-mode
       '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))
     
     (eval-after-load 'sgml-mode
       '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))
     
     (eval-after-load 'web-mode
       '(define-key web-mode-map (kbd "C-c b") 'web-beautify-html))
   
     (eval-after-load 'css-mode
       '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))
     )
  )

;; Angular 2/4
(use-package ng2-mode)

(provide 'stark-web-development)