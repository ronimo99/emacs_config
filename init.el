;; melpa:
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;use-package installed confirmation:
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;gruvbox theme
(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox t))

;;doom themes
;; (use-package doom-themes
;;   :ensure t
;;   :config
;;   ;; Global settings (defaults)
;;   (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;         doom-themes-enable-italic t) ; if nil, italics is universally disabled
;;   (load-theme 'doom-gruvbox t)
;;   ;; Enable flashing mode-line on errors
;;   ;;(doom-themes-visual-bell-config)
;;   ;; Enable custom neotree theme (all-the-icons must be installed!)
;;   ;;(doom-themes-neotree-config)
;;   ;; or for treemacs users
;;   (setq doom-themes-treemacs-theme "doom-gruvbox") ; use "doom-colors" for less minimal icon theme
;;   (doom-themes-treemacs-config)
;;   ;; Corrects (and improves) org-mode's native fontification.
;;   (doom-themes-org-config))

;;org-babel (settings migrated in the config.org file loading):
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;Emacs custom settings:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(backup-inhibited t t)
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   '("e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" default))
 '(fringe-mode 0 nil (fringe))
 '(highlight-indent-guides-method 'character)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(org-agenda-files '("~/Documents/personal/agenda/agenda.org"))
 '(package-selected-packages
   '(eglot lsp-jedi flycheck yasnippet-snippets yasnippet yasnippets company-lsp dap-c++ dap-mode dap-mod lsp-treemacs company-irony pretty-mode diminish spaceline hungry-delete rainbow-mode symon ample-theme moe-theme counsel ivy beacon treemacs-magit company lsp-mode doom-modeline dashboard all-the-icons page-break-lines projectile org markdown-mode))
 '(ring-bell-function nil)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(prettify-symbols-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "ADBO" :family "Sauce Code Pro")))))
