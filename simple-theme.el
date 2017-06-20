;;; simple-theme.el --- A simple theme.
;;; Version: 0.1
;;; Commentary:
;;; This is a theme that I made for personal use.  It features very,
;;; very limited syntax highlighting, and some touches I find
;;; helpful.  Feel free to fork it / use it as you see fit.
;;; Code:

(deftheme simple
  "A simple theme for Emacs.")

(if (not (boundp 'simple/modeline-thickness))
    (setq-default simple/modeline-thickness 4))

(setq-default nlinum-format " %d ")

(let ((class '((class color) (min-colors 256)))
      (bg1 "#FFE9CF")
      (fg1 "#384E55")
      (fg2 "#CFB99F")
      (region-bg "burlywood1")
      (cursor-bg "#485E65")
      (comment-bg "#F8DFC2")
      )
  (custom-theme-set-faces
   'simple
   `(default ((,class (:foreground ,fg1 :background ,bg1))))
   
   `(font-lock-keyword-face ((,class (:foreground ,fg1 :background ,bg1))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg1 :background ,bg1))))
   `(font-lock-string-face ((,class (:foreground ,fg1 :background ,bg1))))
   `(font-lock-function-name-face ((,class (:foreground ,fg1 :background ,bg1))))
   `(font-lock-type-face ((,class (:foreground ,fg1 :background ,bg1))))
   `(font-lock-constant-face ((,class (:foreground ,fg1 :background ,bg1))))
   `(font-lock-builtin-face ((,class (:foreground ,fg1 :background ,bg1))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,fg1 :background ,comment-bg))))
   `(font-lock-comment-face ((,class (:foreground ,fg1 :background ,comment-bg))))

   `(fringe ((,class (:foreground ,fg1 :background ,bg1))))

   `(mode-line ((,class (:foreground ,fg1 :background ,bg1 :box (:line-width ,simple/modeline-thickness :color ,bg1)))))
   `(mode-line-inactive ((,class (:foreground ,fg2 :background ,bg1 :box (:line-width ,simple/modeline-thickness :color ,bg1)))))
   `(cursor ((,class (:foreground ,bg1 :background ,cursor-bg))))
   `(region ((,class (:foreground ,fg1 :background ,region-bg))))
      
   `(flycheck-warning ((,class (:foreground ,fg1 :background ,bg1 :underline (:style wave :color "DarkGoldenrod")))))

   `(vertical-border ((,class (:foreground ,bg1 :background ,bg1))))

   `(whitespace-line ((,class (:foreground ,fg1 :background ,bg1 :underline (:style wave :color ,fg1)))))

   `(nlinum-relative-current-face ((,class (:foreground ,fg1 :background ,bg1 :underline nil))))
   `(linum ((,class (:inherit shadow :background ,bg1 :underline nil))))
   ))

(provide-theme 'simple)
(provide 'simple-theme)
;;; simple-theme.el ends here
