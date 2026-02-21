(setq gnutls-verify-error nil)
(setq tls-checktrust nil)
(setq package-gnupghome-dir nil)
(setq package-check-signature nil)

;; Делаем так, чтобы поиск внутри команд не зависел от регистра
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(setq completion-ignore-case t)

(setq completion-styles '(flex basic partial-completion))

(custom-set-variables
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(package-selected-packages '(gnu-elpa-keyring-update gruber-darker-theme)))
 '(discplay-line-numbers-type 'relative)
(custom-set-faces
 )
(load-theme 'gruber-darker t)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'simpc-mode)
(cua-mode 1)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
(require 'multiple-cursors-core)

(global-set-key (kbd "C-d") 'mc/mark-next-like-this)

(global-set-key (kbd "C-S-d") 'mc/mark-previous-like-this)

(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode)
(require 'iedit)
(setq shift-selection-mode t)  
(cua-mode 1)                     
(fido-vertical-mode 1)     
(electric-pair-mode 1)    
(global-set-key (kbd "C-H") 'iedit-mode)
(global-set-key (kbd "C-s") 'save-buffer)

(global-set-key (kbd "C-f") 'isearch-forward)

(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-S-f") 'isearch-repeat-backward)
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "C-a") 'mark-whole-buffer)

(global-set-key (kbd "C-o") 'find-file)

(global-set-key(kbd "C-g") 'goto-line)(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-q") 'delete-window)

(global-set-key (kbd "C-b") 'ibuffer)
(global-set-key (kbd "<C-S-tab>") 'other-window)
(global-set-key (kbd "C-` ") 'execute-extended-command)
(electric-pair-mode 1)
(global-set-key (kbd "C-e") 'dired-jump)
(global-set-key (kbd "C-j") 'backward-char)
(global-set-key (kbd "C-k") 'forward-char)
(global-set-key (kbd "C-l") 'previous-line)
(global-set-key (kbd "C-;") 'next-line)

(global-set-key (kbd "C-S-j") 'backward-char)
(global-set-key (kbd "C-S-k") 'forward-char)
(global-set-key (kbd "C-S-l") 'previous-line)
(global-set-key (kbd "C-S-;") 'next-line)

(global-set-key (kbd "M-j") 'backward-word)
(global-set-key (kbd "M-k") 'forward-word)

(global-set-key (kbd "M-S-j") 'backward-word)
(global-set-key (kbd "M-S-k") 'forward-word)

(global-set-key (kbd "M-j") 'backward-word)
(global-set-key (kbd "M-k") 'forward-word)

(global-set-key (kbd "M-S-j") 'backward-word-mark)
(global-set-key (kbd "M-S-k") 'forward-word-mark)
(global-set-key (kbd "C-S-d") (lambda () (interactive) (beginning-of-line) (set-mark (line-end-position))))
(global-set-key (kbd "M-d") (lambda () (interactive) (let ((line (buffer-substring (line-beginning-position) (line-end-position)))) (end-of-line) (newline) (insert line))))


(global-set-key (kbd "<C-tab>") 'indent-rigidly-right-to-tab-stop)

(global-set-key (kbd "<backtab>") 'indent-rigidly-left-to-tab-stop)
;;(setq indent-tabs-mode nil)
(setq-default tab-width 4)
(global-set-key (kbd "<f5>") 'recompile)
(setq compilation-ask-about-save nil) 
(global-set-key (kbd "C-/") 'comment-dwim)
(global-set-key (kbd "C-S-/") 'comment-line)
