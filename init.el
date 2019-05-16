;;; package --- summary
;;; Commentary:
;;; Code:
(org-babel-load-file (expand-file-name "~/.emacs.d/configurations.org"))
(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(org-default-notes-file (concat org-directory "/org_notes.org"))
 '(org-directory "~/Documents/org_files")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (jedi zenburn-theme which-key use-package try pylint powerline-evil org-projectile org-evil org-capture-pop-frame org-bullets org-ac msvc lsp-mode ipcalc htmlize help-find-org-mode function-args format-all flymake-ruby flycheck flex-isearch exec-path-from-shell evil-tutor evil-org evil-magit evil-avy cpputils-cmake counsel company-irony-c-headers color-theme auto-org-md))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
