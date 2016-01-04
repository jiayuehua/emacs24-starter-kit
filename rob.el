(starter-kit-load "misc-recommended")
 (setq magit-repo-dirs "~/XiaoQiang/")
(require 'dired)
(window-numbering-mode 1)
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)
;; (add-to-list 'load-path "~/.emacs.d/el-get")
;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;; (el-get 'sync)

(setq dired-recursive-copies t)         ; ¿ÉÒÔµÝ¹éµÄ½øÐÐ¿½±´
(setq dired-recursive-deletes t)        ; ¿ÉÒÔµÝ¹éµÄÉ¾³ýÄ¿Â¼
(put 'dired-find-alternate-file 'disabled nil) ;;not replace dired buffer

;; (global-set-key "\C-x\C-j" 'dired-jump) ; Í¨¹ý C-x C-j Ìø×ªµ½µ±Ç°Ä¿Â¼µÄ Dired
;; (require 'dired-x)            ;ÓÐÐ©ÌØÊâµÄ¹¦ÄÜ  ,! command on the fire
;; (require 'w32-browser)
;; (eval-after-load "dired"
;; '(define-key dired-mode-map [f4] (lambda ()
;; (interactive)
;; (w32-browser
;; (dired-replace-in-string
;; "/" "\\"
;; (dired-get-filename))))))

(require 'dired-isearch)

;; Recommended keybindings:
(define-key dired-mode-map (kbd "C-s") 'dired-isearch-forward)
(define-key dired-mode-map (kbd "C-r") 'dired-isearch-backward)
(define-key dired-mode-map (kbd "M-s") 'dired-isearch-forward-regexp)
(define-key dired-mode-map (kbd "M-r") 'dired-isearch-backward-regexp)
(require 'dired-view)
;;To enable it by default,                
;;      (add-hook 'dired-mode-hook 'dired-view-minor-mode-on) 
;;Also, you could define keys to toggle it,
(define-key dired-mode-map (kbd ";") 'dired-view-minor-mode-toggle)
(define-key dired-mode-map (kbd ":") 'dired-view-minor-mode-dired-toggle)

(require 'dired-details)
(dired-details-install)
;(require 'package)
;(push '("marmalade" . "http://marmalade-repo.org/packages/")
      ;package-archives )
;(push '("melpa" . "http://melpa.milkbox.net/packages/")
      ;package-archives)
;(package-initialize)

;; close sroll-bar tool-bar menu-bar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command) 
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)


;;(require 'csv-mode)			

;; don't understand
;; open those functions
(put 'upcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)

(global-linum-mode t)           ;;line number
(global-set-key "\C-cc" 'remember) ;;remember text
(winner-mode t)                    ;;remember window position
(delete-selection-mode t)             ;; typed text replaces the selection if the selection is active
(global-set-key "\M-/" 'hippie-expand) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ede-project-directories (quote ("c:/Users/jiayuehua" "G:/f/work/VC/tinyxml")))
 '(evil-auto-indent t)
 '(evil-shift-width 2)
 '(evil-want-C-u-scroll t)
 '(gdb-many-windows t)
 '(org-agenda-files (quote ("~/d.org" "~/a.org" "~/c.org")))
 '(safe-local-variable-values (quote ((folded-file . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Courier New")))))
;; save history desktop
;; (desktop-save-mode 1)
;; (setq savehist-file "~/.emacs.d/savehist.savehist")
;; (savehist-mode 1)


(global-set-key [f5] 'call-last-kbd-macro)

;; (server-start)                          
(put 'downcase-region 'disabled nil)
;; (add-to-list 'load-path "/home/jiayuehua")

(ffap-bindings)             
;; wang ying emacs configure file
;; session
;;(require 'session)
;; (add-hook 'after-init-hook 'session-initialize)


;; (require 'browse-kill-ring)
(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)
;;hide region
;; (require 'hide-region)
(global-set-key (kbd "C-c r") 'hide-region-hide)
(global-set-key (kbd "C-c R") 'hide-region-unhide)

;; hide lines
;; (require 'hide-lines)
(global-set-key (kbd "C-c l") 'hide-lines)
(global-set-key (kbd "C-c L") 'show-all-invisible)

;; (require 'recentf)
;; (recentf-mode 1)
;; (global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key "\C-x\C-i" 'bs-show)    ;; or another key
;; (global-set-key "\M-p"  'bs-cycle-previous)
;; (global-set-key "\M-n"  'bs-cycle-next)

;; swbuff prior:PgUp next:PgDn
(require 'swbuff)
(global-set-key "\M-n" 'swbuff-switch-to-next-buffer)
(global-set-key "\M-p" 'swbuff-switch-to-previous-buffer)
;;(global-set-key [C-prior] 'swbuff-switch-to-previous-buffer)
;;(global-set-key [C-next] 'swbuff-switch-to-next-buffer)
(setq swbuff-exclude-buffer-regexps 
      '("^ " "\\*.*\\*"))
(setq swbuff-status-window-layout 'scroll)
(setq swbuff-clear-delay 1)
(setq swbuff-separator "|")
(setq swbuff-window-min-text-height 1)

;; match ( with )
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))
;; jump use C \.
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)
(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  (setq zmacs-region-stays t)
  (point-to-register 8))

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
    (jump-to-register 8)
    (set-register 8 tmp)))

;; C-c a go-to-char
(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
                     char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))
(define-key global-map (kbd "C-c a") 'wy-go-to-char)

(setq visible-bell t)                   ;close bell when error happens
(setq inhibit-startup-message t)        ;close initial message
(setq mouse-yank-at-point t)            ;
(setq column-number-mode t)             ;display column number
(setq kill-ring-max 200)                ;set kill ring max to 200
(setq default-fill-column 60)           ;set fill column to 60 

(setq-default indent-tabs-mode nil)     ;Not use TAB indent
(setq default-tab-width 2)
(setq tab-stop-list ())
(loop for x downfrom 80 to 1 do
      (setq tab-stop-list (cons (* x 2) tab-stop-list)))
(setq enable-recursive-minibuffers t)   ;recursive use minibuf
(setq scroll-margin 3                   ;prevent scroll margin jump
      scroll-conservatively 10000)

(setq default-major-mode 'text-mode)    ;default major mode text-mode

(show-paren-mode t)                     ;display another parenthese
(setq show-paren-style 'parentheses)    

(mouse-avoidance-mode 'animate)         ;mouse avoidance
(setq frame-title-format "emacs@%b")
(auto-image-file-mode)
(global-font-lock-mode t)               ;syntax on

(put 'LaTeX-hide-environment 'disabled nil)
(mapcar                                 ;set auto-mode-alist
 (function (lambda (setting)
             (setq auto-mode-alist
                   (cons setting auto-mode-alist))))
 '(("\\.xml$".  sgml-mode)
   ("\\\.bash" . sh-mode)
   ("\\.rdf$".  sgml-mode)
   ("\\.session" . emacs-lisp-mode)
   ("\\.l$" . c-mode)
   ("\\.css$" . css-mode)
   ("\\.cfm$" . html-mode)
   ("gnus" . emacs-lisp-mode)
   ("\\.idl$" . idl-mode)))

(setq user-full-name "jiayuehua")
(setq user-mail-address "jiayuehua@gmail.com")

;;(require 'ctypes)                       
(ctypes-auto-parse-mode 1)

;;----------------jia----------
(ansi-color-for-comint-mode-on)
(xterm-mouse-mode 1)

;;×Ô¶¯²¹È«À¨ºÅ
(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
                               (?` ?` _ "''")
                               (?\( ?  _ " )")
                               (?\[ ?  _ " ]")
                               (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)

(defun align-repeat (start end regexp)
  "Repeat alignment with respect to 
     the given regular expression."
  (interactive "r\nsAlign regexp: ")
  (align-regexp start end 
                (concat "\\(\\s-*\\)" regexp) 1 1 t))


(global-set-key [(f6)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)

;; windmove   ************************
;;(require 'windmove) 
(windmove-default-keybindings)      

;; modified from windmove-do-window-select
(defun windmove-do-swap-window (dir &optional arg window)
  "Move the buffer to the window at direction DIR.
    DIR, ARG, and WINDOW are handled as by `windmove-other-window-loc'.
    If no window is at direction DIR, an error is signaled."
  (let ((other-window (windmove-find-other-window dir arg window)))
    (cond ((null other-window)
           (error "No window %s from selected window" dir))
          ((and (window-minibuffer-p other-window)
                (not (minibuffer-window-active-p other-window)))
           (error "Minibuffer is inactive"))
          (t
           (let ( (old-buffer (window-buffer window)) )
             (set-window-buffer window (window-buffer other-window))
             (set-window-buffer other-window old-buffer)
             (select-window other-window))))))

(defun hsb-swap-buffer-up (&optional arg)
  (interactive "P")
  (windmove-do-swap-window 'up arg))

(defun hsb-swap-buffer-down (&optional arg)
  (interactive "P")
  (windmove-do-swap-window 'down arg))

(defun hsb-swap-buffer-left (&optional arg)
  (interactive "P")
  (windmove-do-swap-window 'left arg))

(defun hsb-swap-buffer-right (&optional arg)
  (interactive "P")
  (windmove-do-swap-window 'right arg))

(global-set-key (kbd "<C-up>")    'hsb-swap-buffer-up)
(global-set-key (kbd "<C-down>") 'hsb-swap-buffer-down)
(global-set-key (kbd "<C-left>")   'hsb-swap-buffer-left)
(global-set-key (kbd "<C-right>") 'hsb-swap-buffer-right)
;; ;; windmove ^^^^^^^^^^^^^^^^^^^^^^^

(defun my-clear ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(defun my-shell-hook ()
  (local-set-key "\C-cl" 'my-clear))
(add-hook 'shell-mode-hook 'my-shell-hook)


;; Recommended keybindings:
;; (autoload 'nc "nc" "Emuliate MS-DOG file shell" t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(require 'sunrise-commander)
(require 'sunrise-x-buttons)

;; ******************************************
;;          NOT USE FREQUENTLY
;; ******************************************

;; ******** helm ******
;; (require 'helm-config)    
;; (helm-mode 1)
;; (require 'helm-config)                  
;; (require 'helm-grep)

;; ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
;; (global-set-key (kbd "C-c h") 'helm-command-prefix)
;; (global-unset-key (kbd "C-x c"))

;; ;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebihnd tab to do persistent action
;; ;; (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;; ;; (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;; (when (executable-find "curl")
;;   (setq helm-google-suggest-use-curl-p t))

;; (setq helm-quick-update                     t ; do not display invisible candidates
;;       helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
;;       helm-buffers-fuzzy-matching           t ; fuzzy matching buffer names when non--nil
;;       helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
;;       helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;;       helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;;       helm-ff-file-name-history-use-recentf t)

;; (helm-mode 1)
;; ^^^^^^^^ helm ^^^^^^

;; **********org mode 
;; (setq org-default-notes-file "~/.notes.org")
;;    (define-key global-map "\C-cc" 'org-capture)
;; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cb" 'org-iswitchb)
;; ^^^^^^^^^^org mode


;;(require 'gmail)
;;(setq dired-guess-shell-alist-user
;;(list
;;(list "\\.chm$" "xchm")
;;(list "\\.rm$" "gmplayer")
;;(list "\\.rmvb$" "gmplayer")
;;(list "\\.avi$" "gmplayer")
;;(list "\\.asf$" "gmplayer")
;;(list "\\.wmv$" "gmplayer")
;;(list "\\.htm$" "w3m")
;;(list "\\.html$" "w3m")
;;(list "\\.mpg$" "gmplayer")
;;)
;;) ; ÉèÖÃÒ»Ð©ÎÄ¼þµÄÄ¬ÈÏ´ò¿ª·½Ê½£¬´Ë¹¦ÄÜ±ØÐëÔÚ(require 'dired-x)Ö®ºó

;;**********          ibuffer
;;(require 'ibuffer)                      
;;(global-set-key (kbd "C-x C-b") 'ibuffer)

;;(require 'tabbar)

;; (setq tabbar-buffer-groups-function 'tabbar-buffer-ignore-groups) 
;; (defun tabbar-buffer-ignore-groups (buffer)
;;   "Return the list of group names BUFFER belongs to.
;; Return only one group for each buffer."
;;   (with-current-buffer (get-buffer buffer)
;;     (cond
;;      ((or (get-buffer-process (current-buffer))
;;           (memq major-mode
;;                 '(comint-mode compilation-mode)))
;;       '("Process")
;;       )
;;      ((member (buffer-name)
;;               '("*scratch*" "*Messages*"))
;;       '("Common")
;;       )
;;      ((eq major-mode 'dired-mode)
;;       '("Dired")
;;       )
;;      ((memq major-mode
;;             '(help-mode apropos-mode Info-mode Man-mode))
;;       '("Help")
;;       )
;;      ((memq major-mode
;;             '(rmail-mode
;;               rmail-edit-mode vm-summary-mode vm-mode mail-mode
;;               mh-letter-mode mh-show-mode mh-folder-mode
;;               gnus-summary-mode message-mode gnus-group-mode
;;               gnus-article-mode score-mode gnus-browse-killed-mode))
;;       '("Mail")
;;       )
;;      (t
;;       (list 
;;        "default"  ;; no-grouping
;;        (if (and (stringp mode-name) (string-match "[^ ]" mode-name))
;;            mode-name
;;          (symbol-name major-mode)))
;;       )
;;           )))
(setq tabbar-buffer-groups-function
      (lambda ()
        (list "All")))
;; Add a buffer modification state indicator in the tab label, and place a
;; space around the label to make it looks less crowd.
(defadvice tabbar-buffer-tab-label (after fixup_tab_label_space_and_flag activate)
  (setq ad-return-value
        (if (and (buffer-modified-p (tabbar-tab-value tab))
                 (buffer-file-name (tabbar-tab-value tab)))
            (concat " + " (concat ad-return-value " "))
          (concat " " (concat ad-return-value " ")))))
(tabbar-mode)
;; diary
;; (diary)
;; (appt-activate 1)  

(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(global-evil-search-highlight-persist t)

;; (require 'smex) ; Not needed if you use package.el
;; (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
;;                   ; when Smex is auto-initialized on its first run.
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; ;; This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; (require 'expand-region)

;; (global-set-key (kbd "M-=") 'er/expand-region)
;;   (require 'zone)
;; (setq zone-programs [zone-matrix])

;; (zone-when-idle 120)
;;  (defun zone-choose (pgm)
;;     "Choose a PGM to run for `zone'."
;;     (interactive
;;      (list
;;       (completing-read
;;        "Program: "
;;        (mapcar 'symbol-name zone-programs))))
;;     (let ((zone-programs (list (intern pgm))))
;;       (zone)))

;; evil-args
;; bind evil-args text objects
;; (define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
;; (define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

;; ;; bind evil-forward/backward-args
;; (define-key evil-normal-state-map "L" 'evil-forward-arg)
;; (define-key evil-normal-state-map "H" 'evil-backward-arg)
;; (define-key evil-motion-state-map "L" 'evil-forward-arg)
;; (define-key evil-motion-state-map "H" 'evil-backward-arg)

;; ;; bind evil-jump-out-args
;; (define-key evil-normal-state-map "K" 'evil-jump-out-args)

;; evil search highlight persist
(global-evil-search-highlight-persist t)
 
;; change default key bindings (if you want) HERE
;; (setq evil-exchange-key (kbd "zx"))
(evil-exchange-install)
(evilem-default-keybindings "SPC")

(global-evil-matchit-mode 1)
(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)


     (unless (display-graphic-p)
       (require 'evil-terminal-cursor-changer))
(setq etcc--gnome-profile "Profile0")
;;
      (setq evil-visual-state-cursor 'box) ; █
      (setq evil-insert-state-cursor 'bar) ; ⎸
      (setq evil-emacs-state-cursor 'hbar) ; _
;; (require 'popwin)
;; (popwin-mode 1)

;; (push '(direx:direx-mode :position left :width 25 :dedicated t)
;;       popwin:special-display-config)
;; (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
(global-set-key (kbd "C-c p") 'magit-find-file-completing-read)
(setq initial-scratch-message "")
;; (add-hook 'after-save-hook 'magit-after-save-refresh-status) 
