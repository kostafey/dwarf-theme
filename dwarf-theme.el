;;; dwarf-theme.el --- Dark brown Emacs color theme.

;;; Copyright © 2020 - Kostafey <kostafey@gmail.com>

;; This file is not [yet] part of GNU Emacs, but is distributed under
;; the same terms.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 2 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; (load-theme 'dwarf t)

;;; Code:

(make-face 'mode-line-default-face)

(deftheme dwarf
  "Dark brown Emacs color theme.
The warmth and coziness of the dwarven cave inside.")

(let* (;; Colors palette
       (dwarf-soil       "#170F0D")
       (dwarf-wood       "#B28A51") ; #A07C49
       (dwarf-shadow     "#6E5B44")
       (dwarf-lamp       "#48342B")
       (dwarf-candle     "#453028")
       (dwarf-light      "#796549")
       (dwarf-tiny       "#2B1F14")
       (dwarf-gold       "#D5A617") ; "#CFA116"
       (dwarf-gold-dark  "#B8860b")
       (dwarf-white      "#DDD2A9")
       (dwarf-yellow     "#C7DB00")
       (dwarf-teal       "#70A16C")
       (dwarf-teal-dark  "#017C57")
       (dwarf-gem        "#00EEA6")
       (dwarf-green      "#719201")
       (dwarf-blue       "#83a598")
       (dwarf-orange     "#CE7500")
       (dwarf-red        "#A85301")
       (dwarf-red-dark   "#701B05"))

  (custom-theme-set-faces
   'dwarf
   `(default ((t (:foreground ,dwarf-wood :background ,dwarf-soil))))
   `(cursor  ((t (:background ,dwarf-gold))))
   `(hl-line ((t (:background ,dwarf-tiny :inverse-video nil))))

   `(mode-line-default-face ((t (:foreground ,dwarf-lamp))))

   ;; Highlighting faces
   `(fringe              ((t (:background ,dwarf-soil :foreground ,dwarf-shadow))))
   `(highlight           ((t (:background ,dwarf-light))))
   `(region              ((t (:background ,dwarf-light :foreground ,dwarf-white))))
   `(cua-rectangle       ((t (:background ,dwarf-lamp))))
   `(secondary-selection ((t (:background ,dwarf-lamp))))
   `(isearch             ((t (:background ,dwarf-tiny :inverse-video nil))))
   `(lazy-highlight      ((t (:background ,dwarf-candle :inverse-video nil))))
   `(idle-highlight      ((t (:background ,dwarf-candle))))
   `(trailing-whitespace ((t (:background ,dwarf-red))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((t (:foreground ,dwarf-white :weight normal))))
   `(escape-glyph      ((t (:foreground ,dwarf-teal))))
   `(error             ((t (:foreground ,dwarf-red-dark :weight normal))))
   `(warning           ((t (:foreground ,dwarf-orange))))
   `(success           ((t (:foreground ,dwarf-yellow))))

   ;; Font lock faces
   `(font-lock-builtin-face       ((t (:foreground ,dwarf-orange))))
   `(font-lock-comment-face       ((t (:foreground ,dwarf-shadow))))
   `(font-lock-constant-face      ((t (:foreground ,dwarf-gold-dark))))
   `(font-lock-function-name-face ((t (:foreground ,dwarf-red :weight normal))))
   `(font-lock-keyword-face       ((t (:foreground ,dwarf-orange :weight normal))))
   `(font-lock-string-face        ((t (:foreground ,dwarf-green))))
   `(font-lock-type-face          ((t (:foreground ,dwarf-gold-dark :weight normal))))
   `(font-lock-variable-name-face ((t (:foreground ,dwarf-red))))
   `(font-lock-warning-face       ((t (:foreground ,dwarf-red :weight normal))))

   ;; js2-mode
   `(js2-external-variable ((t (:foreground ,dwarf-red :underline nil))))
   `(js2-function-param    ((t (:foreground ,dwarf-teal :underline nil))))

   ;; ace-jump
   `(ace-jump-face-background ((t (:foreground ,dwarf-shadow :background ,dwarf-soil :underline nil))))
   `(ace-jump-face-foreground ((t (:foreground ,dwarf-gold :background ,dwarf-soil :underline nil))))

   ;; line numbers
   `(line-number              ((t (:foreground ,dwarf-wood :background ,dwarf-soil))))
   `(line-number-current-line ((t (:foreground ,dwarf-orange :background ,dwarf-tiny))))

   ;; git-gutter
   `(git-gutter:added    ((t (:foreground ,dwarf-green))) t)
   `(git-gutter:deleted  ((t (:foreground ,dwarf-red))) t)
   `(git-gutter:modified ((t (:foreground ,dwarf-gold-dark))) t)

   `(git-gutter-fr:added    ((t (:foreground ,dwarf-green :background ,dwarf-green))) t)
   `(git-gutter-fr:deleted  ((t (:foreground ,dwarf-red :background ,dwarf-red))) t)
   `(git-gutter-fr:modified ((t (:foreground ,dwarf-gold-dark :background ,dwarf-gold-dark))) t)

   ;; Highlight pair parentheses
   `(show-paren-match    ((t (:background ,dwarf-lamp :weight normal))))
   `(show-paren-mismatch ((t (:background ,dwarf-red))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,dwarf-wood :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,dwarf-red :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,dwarf-orange :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,dwarf-gold :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,dwarf-yellow :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,dwarf-teal :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,dwarf-green :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,dwarf-teal-dark :background ,dwarf-soil))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,dwarf-blue :background ,dwarf-soil))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dwarf)

;;; dwarf-theme.el ends here
