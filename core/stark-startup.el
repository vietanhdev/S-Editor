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

;; Display startup message
(setq initial-scratch-message "




~~~

▒█▀▀▀█ ▀▀█▀▀ █▀▀█ █▀▀█ █░█ 　 
░▀▀▀▄▄ ░░█░░ █▄▄█ █▄▄▀ █▀▄ 　 
▒█▄▄▄█ ░░▀░░ ▀░░▀ ▀░▀▀ ▀░▀ 　 

　 　 　 ▒█▀▀▀ █▀▀▄ ░▀░ ▀▀█▀▀ █▀▀█ █▀▀█ 
　 　 　 ▒█▀▀▀ █░░█ ▀█▀ ░░█░░ █░░█ █▄▄▀ 
　 　 　 ▒█▄▄▄ ▀▀▀░ ▀▀▀ ░░▀░░ ▀▀▀▀ ▀░▀▀ 

uǝʎnƃN ɥu∀-ʇǝᴉɅ ʎq uoᴉʇɐɹnƃᴉⅎuoϽ sɔɐɯƎ u∀ - ɹoʇᴉpƎ ʞɹɐʇS
  
~~~

#### More Info

  - Contact Page : https://vietanhdev.com/contact/
  - Contact Email: vietanh@vietanhdev.com

#### For Vietnamese input method:

  - Use C-\\ and type ‘vietnamese-telex‘ / ‘vietnamese-viqr‘ / ‘vietnamese-vni‘
  - Use C-\\ to toggle input method.

")

(setq inhibit-startup-message t)
(setq initial-major-mode 'markdown-mode)


(provide 'stark-startup)
;;; stark-startup.el ends here
