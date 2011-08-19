; font 
(set-default-font "Inconsolata-11")

;; =============================================================================
;; slime : clisp
;; =============================================================================
;; 
;; (defun slime-common-lisp ()
;;   (interactive)
;;   (setq inferior-lisp-program "clisp -K full") ; your Common Lisp impl
;;   (add-to-list 'load-path "~/.emacs.d/slime-versions/cvs-slime/")  ; your SLIME from CVS directory
;;   (require 'slime)
;;   (slime-setup '(slime-repl))
;;   (slime))

;; =============================================================================
;; slime : clojure
;; =============================================================================
 
;; column mode

;;(column-number-mode)

;; =============================================================================
;; Org config
;; =============================================================================

;; display column number

(column-number-mode)

;; org dir

(setq org-directory "~/org")

;; indentation

(setq org-startup-indented t)

;; log work done

(setq org-log-done 'time)

;; notes directory

(setq org-default-notes-file (concat org-directory "/notes.org"))

;; notes binding

(define-key global-map "\C-cc" 'org-capture)

;; tags

(setq org-tag-alist '(("howTo" . ?h)
                      ("tech" . ?t)
                      ("emacs" . ?e)
                      ("orgMode" . ?o)
                      ("faq" . ?f)
                      ("firefox")
                      ("conkeror")
                      ("linux")))

;; =============================================================================
;; EDiff config
;; =============================================================================

;; split windows horizontally !

(setq ediff-split-window-function 'split-window-horizontally)

;; =============================================================================
;; swank-clojure
;; =============================================================================

;; syntax highlighting on the repl

;; (add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)

;; =============================================================================
;; slime
;; =============================================================================

;; prevent slime to crash when encountering non ascii char
(set-language-environment "UTF-8") 
(setq slime-net-coding-system 'utf-8-unix) 

;; keywiz

;; (require 'keywiz)

;; w3m

(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
 (global-set-key "\C-xm" 'browse-url-at-point)

;; org mode for sh sourcer

(fset 'org-sh-ify
   [return ?\C-p ?# ?B backspace ?+ ?B ?E ?G ?I ?M ?N backspace backspace ?N ?_ ?S ?R ?C ?  ?s ?h ?\C-n ?\C-n ?~ backspace ?# ?+ ?E ?N ?D ?_ ?S ?R ?C ?\C-n])

;; visual window switcher

(require 'switch-window)

;; midje mode

;;(setq load-path (cons "/home/denis/Dropbox/project-source/Midje/emacs/" load-path))

(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(require 'midje-mode)
(add-hook 'clojure-mode-hook 'midje-mode)

(require 'clojure-jump-to-file)

(require 'auto-completion-config)
(ac-config-default)
