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

;; Line numbers
(global-linum-mode t)

(provide 'personal)
;;; personal.el ends here
