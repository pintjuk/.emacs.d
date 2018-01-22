(load "/home/daniil/HOL/tools/hol-mode")

(add-to-list 'load-path "~/.emacs.d/lisp/")


(setq inhibit-startup-screen t)

(defun my-sml-mode-hook ()
    "Local defaults for SML mode"
    (setq electric-indent-chars '()))
(add-hook 'sml-mode-hook 'my-sml-mode-hook)
(add-hook 'prog-mode-hook
	  (lambda () (mouse-wheel-mode -1)))
(transient-mark-mode 1)
(tool-bar-mode -1) 

;;; Fira code
;; This works when using emacs --daemon + emacsclient
;;(add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
;; This works when using emacs without server/client
;;(set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
;; I haven't found one statement that makes both of the above situations work, so I use both for now

;;(defconst fira-code-font-lock-keywords-alist
;;  (mapcar (lambda (regex-char-pair)
;;            `(,(car regex-char-pair)
;;              (0 (prog1 ()
;;                   (compose-region (match-beginning 1)
;;                                   (match-end 1)
;;                                   ;; The first argument to concat is a string containing a literal tab
;;                                   ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
;;          '(("\\(www\\)"                   #Xe100)
;;            ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
;;            ("\\(\\*\\*\\*\\)"             #Xe102)
;;            ("\\(\\*\\*/\\)"               #Xe103)
;;            ("\\(\\*>\\)"                  #Xe104)
;;            ("[^*]\\(\\*/\\)"              #Xe105)
;;            ("\\(\\\\\\\\\\)"              #Xe106)
;;            ("\\(\\\\\\\\\\\\\\)"          #Xe107)
;;            ("\\({-\\)"                    #Xe108)
;;            ("\\(\\[\\]\\)"                #Xe109)
;;            ("\\(::\\)"                    #Xe10a)
;;            ("\\(:::\\)"                   #Xe10b)
;;            ("[^=]\\(:=\\)"                #Xe10c)
;;            ("\\(!!\\)"                    #Xe10d)
;;            ("\\(!=\\)"                    #Xe10e)
;;            ("\\(!==\\)"                   #Xe10f)
;;            ("\\(-}\\)"                    #Xe110)
;;            ("\\(--\\)"                    #Xe111)
;;            ("\\(---\\)"                   #Xe112)
;;            ("\\(-->\\)"                   #Xe113)
;;            ("[^-]\\(->\\)"                #Xe114)
;;            ("\\(->>\\)"                   #Xe115)
;;            ("\\(-<\\)"                    #Xe116)
;;            ("\\(-<<\\)"                   #Xe117)
;;            ("\\(-~\\)"                    #Xe118)
;;            ("\\(#{\\)"                    #Xe119)
;;            ("\\(#\\[\\)"                  #Xe11a)
;;            ("\\(##\\)"                    #Xe11b)
;;            ("\\(###\\)"                   #Xe11c)
;;            ("\\(####\\)"                  #Xe11d)
;;            ("\\(#(\\)"                    #Xe11e)
;;            ("\\(#\\?\\)"                  #Xe11f)
;;            ("\\(#_\\)"                    #Xe120)
;;            ("\\(#_(\\)"                   #Xe121)
;;            ("\\(\\.-\\)"                  #Xe122)
;;            ("\\(\\.=\\)"                  #Xe123)
;;            ("\\(\\.\\.\\)"                #Xe124)
;;            ("\\(\\.\\.<\\)"               #Xe125)
;;            ("\\(\\.\\.\\.\\)"             #Xe126)
;;            ("\\(\\?=\\)"                  #Xe127)
;;            ("\\(\\?\\?\\)"                #Xe128)
;;            ("\\(;;\\)"                    #Xe129)
;;            ("\\(/\\*\\)"                  #Xe12a)
;;            ("\\(/\\*\\*\\)"               #Xe12b)
;;            ("\\(/=\\)"                    #Xe12c)
;;            ("\\(/==\\)"                   #Xe12d)
;;            ("\\(/>\\)"                    #Xe12e)
;;            ("\\(//\\)"                    #Xe12f)
;;            ("\\(///\\)"                   #Xe130)
;;            ("\\(&&\\)"                    #Xe131)
;;            ("\\(||\\)"                    #Xe132)
;;            ("\\(||=\\)"                   #Xe133)
;;            ("[^|]\\(|=\\)"                #Xe134)
;;            ("\\(|>\\)"                    #Xe135)
;;            ("\\(\\^=\\)"                  #Xe136)
;;            ("\\(\\$>\\)"                  #Xe137)
;;            ("\\(\\+\\+\\)"                #Xe138)
;;            ("\\(\\+\\+\\+\\)"             #Xe139)
;;            ("\\(\\+>\\)"                  #Xe13a)
;;            ("\\(=:=\\)"                   #Xe13b)
;;            ("[^!/]\\(==\\)[^>]"           #Xe13c)
;;            ("\\(===\\)"                   #Xe13d)
;;            ("\\(==>\\)"                   #Xe13e)
;;            ("[^=]\\(=>\\)"                #Xe13f)
;;            ("\\(=>>\\)"                   #Xe140)
;;            ("\\(<=\\)"                    #Xe141)
;;            ("\\(=<<\\)"                   #Xe142)
;;            ("\\(=/=\\)"                   #Xe143)
;;            ("\\(>-\\)"                    #Xe144)
;;            ("\\(>=\\)"                    #Xe145)
;;            ("\\(>=>\\)"                   #Xe146)
;;            ("[^-=]\\(>>\\)"               #Xe147)
;;            ("\\(>>-\\)"                   #Xe148)
;;            ("\\(>>=\\)"                   #Xe149)
;;            ("\\(>>>\\)"                   #Xe14a)
;;            ("\\(<\\*\\)"                  #Xe14b)
;;            ("\\(<\\*>\\)"                 #Xe14c)
;;            ("\\(<|\\)"                    #Xe14d)
;;            ("\\(<|>\\)"                   #Xe14e)
;;            ("\\(<\\$\\)"                  #Xe14f)
;;            ("\\(<\\$>\\)"                 #Xe150)
;;            ("\\(<!--\\)"                  #Xe151)
;;            ("\\(<-\\)"                    #Xe152)
;;            ("\\(<--\\)"                   #Xe153)
;;            ("\\(<->\\)"                   #Xe154)
;;            ("\\(<\\+\\)"                  #Xe155)
;;            ("\\(<\\+>\\)"                 #Xe156)
;;            ("\\(<=\\)"                    #Xe157)
;;            ("\\(<==\\)"                   #Xe158)
;;            ("\\(<=>\\)"                   #Xe159)
;;            ("\\(<=<\\)"                   #Xe15a)
;;            ("\\(<>\\)"                    #Xe15b)
;;            ("[^-=]\\(<<\\)"               #Xe15c)
;;            ("\\(<<-\\)"                   #Xe15d)
;;            ("\\(<<=\\)"                   #Xe15e)
;;            ("\\(<<<\\)"                   #Xe15f)
;;            ("\\(<~\\)"                    #Xe160)
;;            ("\\(<~~\\)"                   #Xe161)
;;            ("\\(</\\)"                    #Xe162)
;;            ("\\(</>\\)"                   #Xe163)
;;            ("\\(~@\\)"                    #Xe164)
;;            ("\\(~-\\)"                    #Xe165)
;;            ("\\(~=\\)"                    #Xe166)
;;            ("\\(~>\\)"                    #Xe167)
;;            ("[^<]\\(~~\\)"                #Xe168)
;;            ("\\(~~>\\)"                   #Xe169)
;;            ("\\(%%\\)"                    #Xe16a)
;;           ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
;;            ("[^:=]\\(:\\)[^:=]"           #Xe16c)
;;            ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
;;            ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

;;(defun add-fira-code-symbol-keywords ()
;;  (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

;;(add-hook 'prog-mode-hook
;;          #'add-fira-code-symbol-keywords)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;(use-package flycheck
;  :ensure t
;  :init (global-flycheck-mode))


;; parslin for flycheck stuff
;;(require 'flycheck-proselint)
;;(eval-after-load 'flycheck
;;   '(add-hook 'flycheck-mode-hook #'flycheck-proselint-setup))
;; (add-hook 'text-mode-hook #'flycheck-mode)
;; (add-hook 'markdown-mode-hook #'flycheck-mode)
;; (add-hook 'message-mode-hook #'flycheck-mode)
;(use-package 'flycheck-vale)
;(require 'flycheck-vale)
;(flycheck-vale-setup)

(require 'evil)
(evil-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml-electric-pipe-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'org)
(eval-after-load "org"
  '(require 'ox-md nil t))
(setq org-latex-pdf-process
      '("pdflatex -interaction nonstopmode -output-directory %o %f"
        "bibtex %b"
        "pdflatex -interaction nonstopmode -output-directory %o %f"
        "pdflatex -interaction nonstopmode -output-directory %o %f"))

(require 'org-journal)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; python config;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq python-shell-interpreter "python3")
(defun config-python ()
  (message "configuring python mod")
  (setq tags-file-name "tags")
  (defun regenerate-ctags ()
    (message "running ctags...")
    ;(shell-command "ctags -f tags -e -R $(python3 -m site | sed -n \"/.*'.*',/p\" | sed \"s/.*'\\\\(.*\\\\)'.*,/\\1/g\"" ))
    (shell-command "ctags -f tags -e -R  $(python3 -m site | sed -n \"/.*'.*,/p\" | sed \"s/.*'\\\\(.*\\\\)'.*,/\\1/g\") 2> /dev/null; echo 'ctags regenerated'"))
    (add-hook 'after-save-hook 'regenerate-ctags)
;    (setq tags-table-list
;           '("~/emacs" "/usr/local/lib/emacs/src"))
)
(add-hook 'python-mode-hook 'config-python)

; set terminal bacround to use system wide setting
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)
