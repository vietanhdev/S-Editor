;; ===================== *** =====================
;;   This file is belong to
;;   STARK EDITOR - another Emacs configuration
;;   Included: Startup Options
;; ===============================================


;; Maximize window on starting
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Display startup message
(setq initial-scratch-message "


~~~

  #####                                #######
 #     # #####   ##   #####  #    #    #       #####  # #####  ####  #####
 #         #    #  #  #    # #   #     #       #    # #   #   #    # #    #
  #####    #   #    # #    # ####      #####   #    # #   #   #    # #    #
       #   #   ###### #####  #  #      #       #    # #   #   #    # #####
 #     #   #   #    # #   #  #   #     #       #    # #   #   #    # #   #
  #####    #   #    # #    # #    #    ####### #####  #   #    ####  #    # 

STARK EDITOR
AN EMACS CONFIGURATION BY VIET-ANH NGUYEN   https://vietanhdev.com
  
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
