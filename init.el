;; make sure to change file name from emacs.init to .emacs! make sure that you also move the .emacs file to your home page!
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(ansi-color-faces-vector
[default default default italic underline success warning error])
'(ansi-color-names-vector
["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
'(compilation-message-face (quote default))
'(cua-global-mark-cursor-color "#2aa198")
'(cua-normal-cursor-color "#839496")
'(cua-overwrite-cursor-color "#b58900")
'(cua-read-only-cursor-color "#859900")
'(custom-enabled-themes (quote (light-blue)))
'(custom-safe-themes
(quote
("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
'(fci-rule-color "#073642")
'(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
'(highlight-symbol-colors
(--map
(solarized-color-blend it "#002b36" 0.25)
(quote
("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
'(highlight-symbol-foreground-color "#93a1a1")
'(highlight-tail-colors
(quote
(("#073642" . 0)
("#546E00" . 20)
("#00736F" . 30)
("#00629D" . 50)
("#7B6000" . 60)
("#8B2C02" . 70)
("#93115C" . 85)
("#073642" . 100))))
'(hl-bg-colors
(quote
("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
'(hl-fg-colors
(quote
("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
'(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
'(magit-diff-use-overlays nil)
'(nrepl-message-colors
(quote
("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
'(nyan-mode t)
'(nyan-wavy-trail t)
'(package-archives
(quote
(("gnu" . "http://elpa.gnu.org/packages/")
("melpa" . "http://melpa.org/packages/"))))
'(package-selected-packages
(quote
(solarized-theme color-theme-solarized lenlen-theme flycheck-irony auto-complete-c-headers nyan-mode color-theme-sanityinc-solarized)))
'(pos-tip-background-color "#073642")
'(pos-tip-foreground-color "#93a1a1")
'(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
'(term-default-bg-color "#002b36")
'(term-default-fg-color "#839496")
'(vc-annotate-background nil)
'(vc-annotate-background-mode nil)
'(vc-annotate-color-map
(quote
((20 . "#dc322f")
(40 . "#cb4b16")
(60 . "#b58900")
(80 . "#859900")
(100 . "#2aa198")
(120 . "#268bd2")
(140 . "#d33682")
(160 . "#6c71c4")
(180 . "#dc322f")
(200 . "#cb4b16")
(220 . "#b58900")
(240 . "#859900")
(260 . "#2aa198")
(280 . "#268bd2")
(300 . "#d33682")
(320 . "#6c71c4")
(340 . "#dc322f")
(360 . "#cb4b16"))))
'(vc-annotate-very-old-color nil)
'(weechat-color-list
(quote
(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
'(xterm-color-names
["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
'(xterm-color-names-bright
["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo")))))
