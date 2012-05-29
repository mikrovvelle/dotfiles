(global-set-key "\M- " 'hippie-expand)


;; (mac-command-key-is-meta)
(set-keyboard-coding-system `utf-8)
(setq-default indent-tabs-mode nil)



(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color "white")


(autoload 'kdbp-mode "~/.emacs.d/kdbp-mode.el" "kdbb mode" t)
(autoload 'julia-mode "~/.emacs.d/julia-mode.el" "julia mode" t)

(setq gnus-select-method '(nntp "news.europe.panic.com"))
(setq eol-mnemonic-dos "")

(load "~/.emacs.d/haskellmode-emacs/haskell-site-file.el")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Menlo")))))
(put 'upcase-region 'disabled nil)

(setq diary-file "~/Dropbox/notes/diary")

