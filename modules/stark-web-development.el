;; Autocomplete / Snippets for Web development
(stark-require-package 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(setq-default emmet-move-cursor-between-quote t)

;; Display corresponding background color for hex value in html/css
(stark-require-package 'rainbow-mode)
(add-hook 'html-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)

;; Javascript
(stark-require-package 'js2-mode)

;; Web mode
(stark-require-package 'web-mode)
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


;; Beautify html/css/js
(stark-require-package 'web-beautify)

;; Angular 2/4
(stark-require-package 'ng2-mode)

(provide 'stark-web-development)
