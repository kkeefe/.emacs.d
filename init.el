;;; package --- summary
;;; Commentary:
;;; Code:
(org-babel-load-file (expand-file-name "~/.emacs.d/configurations.org"))
(provide 'init)
;;; init.el ends here

;;; custom shit..
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (ox-reveal zenburn-theme which-key use-package try pylint powerline-evil org-evil msvc ipcalc htmlize help-find-org-mode function-args format-all flymake-ruby flycheck flex-isearch exec-path-from-shell evil-org evil-magit cpputils-cmake counsel company-irony-c-headers color-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
