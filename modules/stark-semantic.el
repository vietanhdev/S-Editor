;;; stark-semantic --- For C/C++/Java development
(require 'semantic)

(require 'semantic/ia)

;;If you're using GCC for programming in C & C++, then Semantic can automatically find directory, where system include files are stored
(require 'semantic/bovine/gcc)


(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))

;; enables global support for Semanticdb;
(global-semanticdb-minor-mode)

;; activates highlighting of first line for current tag (function, class, etc.);
(global-semantic-highlight-func-mode)

;; activates mode when name of current tag will be shown in top line of buffer;
(global-semantic-stickyfunc-mode)

;; activates highlighting of local names that are the same as name of tag under cursor;
(global-semantic-idle-local-symbol-highlight-mode)

;; activates automatic parsing of source code in the idle time;
(global-semantic-idle-scheduler-mode)

;; activates displaying of possible name completions in the idle time. Requires that global-semantic-idle-scheduler-mode was enabled;
(global-semantic-idle-completions-mode)

;; activates displaying of information about current tag in the idle time. Requires that global-semantic-idle-scheduler-mode was enabled.
(global-semantic-idle-summary-mode)


;; ====================


;; shows which elements weren't processed by current parser's rules;
(global-semantic-show-unmatched-syntax-mode)

;;shows current parser state in the modeline;
(global-semantic-show-parser-state-mode)

;;shows changes in the text that weren't processed by incremental parser yet.
(global-semantic-highlight-edits-mode)


(provide 'stark-semantic)
