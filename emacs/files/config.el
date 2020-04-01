;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Egor Lukin"
      user-mail-address "lukin.net@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/shared/org/")

(setq org-super-agenda-groups
      '((:name "Log\n"
               :log t)  ; Automatically named "Log"
        (:name "Schedule\n"
               :time-grid t)
        (:name "Today\n"
               :scheduled today)
        (:name "Due today\n"
               :deadline today)
        (:name "Overdue\n"
               :deadline past)
        (:name "Due soon\n"
               :deadline future)
        (:name "Waiting\n"
               :todo "WAIT"
               :order 98)
        (:name "Scheduled earlier\n"
               :scheduled past)))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)
(setq ivy-re-builders-alist
       '((swiper . ivy--regex-plus)
         (t      . ivy--regex-fuzzy)))


;; fuzzy search by default
(setq helm-mode-fuzzy-match t)

(setq projectile-project-search-path '("~/Projects/" "~/shared/"))


; (setq mac-command-modifier 'meta)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.


;; Autocompletion for eshell
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)))

(setq eshell-cmpl-cycle-completions nil)

;; (map! :leader
;;       :desc "ag" "s a" #'counsel-ag)

;; (map! :leader
;;       :desc "fzf" "s f" #'counsel-fzf)

(setq doom-theme 'doom-acario-dark)

(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))


(setq doom-font (font-spec :family "monospace" :size 18 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "sans" :size 18))

;; emacs/eshell
(after! eshell
  (set-eshell-alias!
   "dc" "docker-compose \$*"
   "dcrs" "docker-compose run --service-ports \$*"
   "gl"  "(call-interactively 'magit-log-current)"
   "gs"  "magit-status"
   "gc"  "magit-commit"))
