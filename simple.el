(deftheme simple
  "A simple theme for Emacs.")

(if (not (boundp 'simple/modeline-thickness))
    (setq-default simple/modeline-thickness 4))

(let ((class '((class color) (min-colors 256)))
      (bg1 "#FFE9CF")
      (bg2 "#AEAAA5")
      (fg1 "#384E55")
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
   `(mode-line ((,class (:foreground ,bg1 :background ,fg1 :box (:line-width ,simple/modeline-thickness :color ,fg1)))))
   `(mode-line-inactive ((,class (:foreground ,bg1 :background ,bg2 :box (:line-width ,simple/modeline-thickness :color ,bg2)))))
   `(cursor ((,class (:foreground ,bg1 :background ,cursor-bg))))
   `(region ((,class (:foreground ,fg1 :background ,region-bg))))
      
   `(flycheck-warning ((,class (:foreground ,fg1 :background ,bg1 :underline (:style wave :color "DarkGoldenrod")))))
   ))
