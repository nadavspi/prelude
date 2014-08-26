;;; personal.el --- Nadav's personal configuration

;;; Commentary:
;; Random configuration

;;; Code:

;; Disable flyspell
(setq prelude-flyspell nil)

;; Theme functions
(defun light ()
(interactive)
(color-theme-sanityinc-solarized-light))
(defun dark ()
(interactive)
(color-theme-sanityinc-tomorrow-eighties))

;; Default theme
(disable-theme 'zenburn)
(dark)

;; Font settings
(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :height 180)
  (set-default-font "input sans")
  (toggle-word-wrap t)

  (defun use-proportional-font ()
    (interactive)
    (face-remap-add-relative 'default '(:family "Input Sans"))
  )

  (defun use-monospace-font ()
    (interactive)
    (face-remap-add-relative 'default '(:family "Input Mono"))
  ))

(add-hook 'dired-mode-hook 'use-monospace-font)
(add-hook 'magit-mode-hook 'use-monospace-font)

;; Line numbers
(global-linum-mode t)

;; Key chords
(prelude-require-package 'key-chord)
(require 'key-chord)
(key-chord-mode 1)

(defun evil-normal-and-save-buffer()
  (interactive)
  (evil-normal-state)
  (save-buffer))
(key-chord-define evil-insert-state-map "jk" 'evil-normal-and-save-buffer)

(provide 'personal)
;;; personal.el ends here