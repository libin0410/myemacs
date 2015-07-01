;;LOAD_PATH
(add-to-list 'load-path' "~/.emacs.d/site-lisp")
;;COLOR_THEME
;;(color-theme-classic)
;;display-number
(require 'display-line-number)
(setq display-line-number-format "%3d ")
(add-hook 'c-mode-hook 'display-line-number-mode)
(add-hook 'c++-mode-hook 'display-line-number-mode)
;;session
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(load "desktop")
(desktop-save-mode)
;;xcscope
(require 'xcscope)
;;cedet
(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
     (load-file "~/.emacs.d/site-lisp/cedet-1.1/common/cedet.el")
     (semantic-load-enable-code-helpers)
     (autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
     (autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)
     (define-key-after (lookup-key global-map [menu-bar tools])
                [speedbar]
                '("Speedbar" .
                speedbar-frame-mode)
                [calendar])
;;ecb
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb-2.40")
(load-file "~/.emacs.d/site-lisp/ecb-2.40/ecb.el")
(require 'ecb)
(setq ecb-auto-activate t
          ecb-tip-of-the-day nil
          ecb-tree-indent 4
          ecb-windows-height 0.5
          ecb-windows-width 0.20
          ecb-auto-compatibility-check nil
          ecb-version-check nil
          inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote ("/home/ubuntu/emacs" "/home/ubuntu/libin/emacs")))
 '(ecb-use-speedbar-instead-native-tree-buffer (quote dir))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq stack-trace-on-error t)
(global-linum-mode t)
(put 'upcase-region 'disabled nil)
