(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq package-enable-at-startup nil)
(setq inhibit-startup-message t)
(tool-bar-mode -1)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))
(require 'use-package)

(use-package try
	     :ensure t)

;; lets include some evil mode stuff!
;; who doesn't want to get good at vim? ;)
;; (add-to-list 'load-path "~/.emacs.d/evil")
;; (require 'evil)
;; (evil-mode 1)
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  ;; More configuration goes here
  )

(setq evil-normal-state-tag   (propertize " COMMAND " 'face '((:background "dark khaki" :foreground "black")))
      evil-emacs-state-tag    (propertize "  EMACS  " 'face '((:background "turquoise" :foreground "black")))
      evil-insert-state-tag   (propertize "  INSERT  " 'face '((:background "dark sea green" :foreground "black")))
      evil-replace-state-tag  (propertize " REPLACE " 'face '((:background "dark orange" :foreground "black")))
      evil-motion-state-tag   (propertize "  MOTION " 'face '((:background "khaki" :foreground "black")))
      evil-visual-state-tag   (propertize "  VISUAL " 'face '((:background "light salmon" :foreground "black")))
      evil-operator-state-tag (propertize " OPERATE " 'face '((:background "sandy brown" :foreground "black"))))

(require 'powerline)
(powerline-center-evil-theme)

(require 'evil-magit)

(use-package swiper
  :ensure try
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ;; enable this if you want `swiper' to use it
    ;; (setq search-default-mode #'char-fold-to-regexp)
    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-find-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    ))

(use-package which-key
	     :ensure t
	     :config
	     (which-key-mode))

(setq ido-everywhere t)
(ido-mode 1)

;; this is your life saver.. get rid of this damn bell..
(setq ring-bell-function 'ignore)

(use-package counsel
  :ensure t
  )

(defalias 'list-buffers 'ibuffer)

;; (defalias 'list-buffers 'ibuffer-other-window) 
;; some option to include if you want to make sure that it opens in new window..

;; if you like yourself some flycheck..
;; (package-refresh-contents)
;; (package-install 'flycheck)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

    (setq-default flycheck-disabled-checkers '(c/c++-clang))
    (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
;; (add-hook 'python-mode-hook
;; 	    (lambda ()
;; 	    (setq flycheck-python-pylint-executable "/usr/bin/pylint")
;; 	    (setq flycheck-pylintrc "/Users/kevinkeefe/.pylintrc"))

;; flycheck claims that this fixes pathing errors..
(package-install 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; this silly command, believe it or not, removes iterm2 error on emacs startup
(delete-file "~/Library/Colors/Emacs.clr")

;; org babel stuff

(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)))

;; ;; if you like the tabbar..
;; (use-package tabbar
;;   :ensure t
;;   :config
;;   (tabbar-mode 1))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(custom-set-variables
 '(org-directory "~/Documents/org_files")
 '(org-default-notes-file (concat org-directory "/org_notes.org"))
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 )

(use-package org-ac
  :ensure t
  :init (progn
          (require 'org-ac)
          (org-ac/config-default)
          ))


(setq org-agenda-files (list "~/.emacs.d/org_agenda.org"))

(global-set-key "\C-ca" 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c f") 'org-footnote-action)


   ;; (setq org-file-apps
   ;; 	(append '("\\.pdf\\'") . "evince %s")
   ;; 	) org-file-apps ))

;; (use-package color-theme
;;    :ensure t)

(use-package zenburn-theme
  :ensure t
  :init (load-theme 'zenburn t))
