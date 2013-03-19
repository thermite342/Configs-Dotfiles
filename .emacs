;;note that you will need the color themes package for this to work. I like the late night theme.

(add-to-list 'load-path "~/.emacs.d/")

;;Custom keybindings
(define-key global-map (kbd "RET") 'newline-and-indent)
(add-hook 'perl-mode-hook 'lambda () (local-set-key [f5] 'compile))

;;Custom Settings
(setq visible-bell t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-linum-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode nil)
 '(send-mail-function (quote mailclient-send-it))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "ne" :family "ProFont")))))


;;Custom Colors Settings
;;(load-theme 'dark-emacs-theme t)
(require 'color-theme)
(color-theme-initialize)
(color-theme-late-night)
(let ((spec '((t (:family "ProFont" :height 75)))))
        (mapc (lambda (face)
            (face-spec-set face spec)
            (put face 'face-defface-spec spec))
            '(default menu)))
            
