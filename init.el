(setq hol-executable "/home/daniil/Apps/HOL/bin/hol")
(load "/home/daniil/Apps/HOL/tools/hol-mode.src")


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

;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(package-initialize)
;;
;;(use-package markdown-mode
  ;;:ensure t
  ;;:commands (markdown-mode gfm-mode)
  ;;:mode (("README\\.md\\'" . gfm-mode)
         ;;("\\.md\\'" . markdown-mode)
         ;;("\\.markdown\\'" . markdown-mode))
  ;;:init (setq markdown-command "multimarkdown"))
;;
;;
;;(require 'evil)
;;(evil-mode t)
;;(custom-set-variables
 ;;;; custom-set-variables was added by Custom.
 ;;;; If you edit it by hand, you could mess it up, so be careful.
 ;;;; Your init file should contain only one such instance.
 ;;;; If there is more than one, they won't work right.
 ;;'(package-selected-packages
   ;;(quote
    ;;(which-key tide typescript-mode golint yaml-mode use-package sml-mode org-journal org-gnome org-evil go-mode flycheck-vale evil-org)))
 ;;'(sml-electric-pipe-mode nil))
;;(custom-set-faces
 ;;;; custom-set-faces was added by Custom.
 ;;;; If you edit it by hand, you could mess it up, so be careful.
 ;;;; Your init file should contain only one such instance.
 ;;;; If there is more than one, they won't work right.
 ;;)
;;(require 'org)
;;(eval-after-load "org"
  ;;'(require 'ox-md nil t))
;;(setq org-latex-pdf-process
      ;;'("pdflatex -interaction nonstopmode -output-directory %o %f"
        ;;"bibtex %b"
        ;;"pdflatex -interaction nonstopmode -output-directory %o %f"
        ;;"pdflatex -interaction nonstopmode -output-directory %o %f"))
;;
;;(require 'org-journal)
;;
;;(require 'which-key)
;;(which-key-mode)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; python config;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(setq python-shell-interpreter "python3")
;;(defun config-python ()
  ;;(message "configuring python mod")
  ;;(setq tags-file-name "tags")
  ;;(defun regenerate-ctags ()
    ;;(message "running ctags...")
    ;;;(shell-command "ctags -f tags -e -R $(python3 -m site | sed -n \"/.*'.*',/p\" | sed \"s/.*'\\\\(.*\\\\)'.*,/\\1/g\"" ))
    ;;(shell-command "ctags -f tags -e -R  $(python3 -m site | sed -n \"/.*'.*,/p\" | sed \"s/.*'\\\\(.*\\\\)'.*,/\\1/g\") 2> /dev/null; echo 'ctags regenerated'"))
    ;;(add-hook 'after-save-hook 'regenerate-ctags)
;;;    (setq tags-table-list
;;;           '("~/emacs" "/usr/local/lib/emacs/src"))
;;)
;;(add-hook 'python-mode-hook 'config-python)
;;
;;; set terminal bacround to use system wide setting
;;(defun on-after-init ()
  ;;(unless (display-graphic-p (selected-frame))
    ;;(set-face-background 'default "unspecified-bg" (selected-frame))))
;;
;;(add-hook 'window-setup-hook 'on-after-init)
;;
;;(require 'flymake)
;;
;;(defun flymake-get-tex-args (file-name)
;;(list "pdflatex"
;;(list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))
;;
;;(add-hook 'LaTeX-mode-hook 'flymake-mode)
;;
;;(require 'reftex)
;;
;;
;;
;;(setq-default indent-tabs-mode nil)
;;(setq tab-width 4)
