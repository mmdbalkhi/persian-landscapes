;;; persian-landscapes-themes.el --- Persian Landscapes theme family -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh

;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.1") (modus-themes "5.0.0"))
;; Keywords: faces, theme, accessibility
;; URL: https://github.com/komeilparseh/persian-landscapes

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Persian Landscapes — a family of eight GNU Emacs themes based on
;; modus-themes: Anar (pomegranate), Kavir (desert), Kashi (lapis)
;; and Goy (glaze), each with a dark and a light variant.
;;
;; Every palette is a complete Modus palette produced by
;; `modus-themes-generate-palette'.  The shared semantic mappings give
;; every variant the same syntax semantics while each palette keeps its
;; own color identity.

;;; Code:

(require 'modus-themes)

(defconst persian-landscapes-themes--common-mappings
  '((cursor cursor)
    (keybind keyword)
    (name fnname)
    (identifier fnname)

    (err error)
    (warning warning)
    (info type)
    (underline-err error)
    (underline-warning warning)
    (underline-note type)

    (builtin type)
    (comment fg-dim)
    (constant constant)
    (docstring fg-alt)
    (fnname fnname)
    (fnname-call fnname)
    (keyword keyword)
    (preprocessor keyword)
    (property type)
    (string string)
    (type type)
    (variable fg-main)
    (variable-use fg-dim)
    (number constant)
    (operator fg-main)
    (bracket fg-main)
    (delimiter fg-main)
    (punctuation fg-main)

    (accent-0 keyword)
    (accent-1 type)
    (accent-2 constant)
    (accent-3 error)
    (fg-completion-match-0 keyword)
    (fg-completion-match-1 type)
    (fg-completion-match-2 constant)
    (fg-completion-match-3 error)

    (fg-prompt type)
    (fg-paren-match fg-main)
    (underline-paren-match cursor)
    (bg-paren-match bg-cyan-subtle)
    (bg-paren-expression bg-green-nuanced)

    (bg-completion bg-dim)
    (bg-popup bg-dim)
    (bg-hover bg-region)
    (bg-hover-secondary bg-alt)
    (bg-tab-bar bg-dim)
    (bg-tab-current bg-main)
    (bg-tab-other bg-alt)

    (bg-mode-line-active bg-alt)
    (fg-mode-line-active fg-main)
    (border-mode-line-active border)
    (bg-mode-line-inactive bg-dim)
    (fg-mode-line-inactive fg-dim)
    (border-mode-line-inactive bg-dim)

    (fg-heading-0 fg-dim)
    (fg-heading-1 fg-main)
    (fg-heading-2 keyword)
    (fg-heading-3 type)
    (fg-heading-4 fnname)
    (fg-heading-5 constant)
    (fg-heading-6 string)
    (fg-heading-7 error)
    (fg-heading-8 fg-dim)

    (date-common type)
    (date-deadline error)
    (date-scheduled constant)
    (date-weekday type)
    (date-weekend keyword)

    (mail-cite-0 keyword)
    (mail-cite-1 constant)
    (mail-cite-2 type)
    (mail-cite-3 error)
    (mail-part type)
    (mail-recipient fnname)
    (mail-subject keyword)
    (mail-other fg-dim)

    (bg-mark-delete bg-red-subtle)
    (fg-mark-delete fg-main)
    (bg-mark-select bg-cyan-subtle)
    (fg-mark-select type)
    (bg-mark-other bg-yellow-subtle)
    (fg-mark-other constant)

    (prose-done success)
    (prose-todo error)
    (prose-metadata fg-dim)
    (prose-metadata-value fg-main)
    (prose-table fg-main)
    (prose-table-formula constant)
    (prose-tag fnname)
    (fg-prose-code type)
    (fg-prose-macro keyword)
    (fg-prose-verbatim fnname)

    (rainbow-0 fg-main)
    (rainbow-1 keyword)
    (rainbow-2 type)
    (rainbow-3 error)
    (rainbow-4 constant)
    (rainbow-5 fnname)
    (rainbow-6 string)
    (rainbow-7 keyword)
    (rainbow-8 type)

    ;; Diff: semantic backgrounds with readable foregrounds.
    (bg-added bg-green-nuanced)
    (bg-added-faint bg-green-nuanced)
    (bg-added-refine bg-green-subtle)
    (bg-added-fringe success)
    (fg-added fg-main)
    (fg-added-intense fg-main)

    (bg-changed bg-yellow-nuanced)
    (bg-changed-faint bg-yellow-nuanced)
    (bg-changed-refine bg-yellow-subtle)
    (bg-changed-fringe constant)
    (fg-changed fg-main)
    (fg-changed-intense fg-main)

    (bg-removed bg-red-nuanced)
    (bg-removed-faint bg-red-nuanced)
    (bg-removed-refine bg-red-subtle)
    (bg-removed-fringe error)
    (fg-removed fg-main)
    (fg-removed-intense fg-main)

    ;; Search and match: subtle backgrounds with main foreground text.
    (bg-search-current bg-yellow-subtle)
    (fg-search-current fg-main)
    (bg-search-lazy bg-cyan-subtle)
    (fg-search-lazy fg-main)
    (bg-search-static bg-magenta-subtle)
    (fg-search-static fg-main)
    (bg-search-replace bg-red-subtle)
    (fg-search-replace fg-main)
    (bg-search-rx-group-0 bg-blue-subtle)
    (fg-search-rx-group-0 fg-main)
    (bg-search-rx-group-1 bg-green-subtle)
    (fg-search-rx-group-1 fg-main)
    (bg-search-rx-group-2 bg-red-subtle)
    (fg-search-rx-group-2 fg-main)
    (bg-search-rx-group-3 bg-magenta-subtle)
    (fg-search-rx-group-3 fg-main)

    ;; Eldoc / active argument values: neutral text on subtle backgrounds.
    (bg-active-argument bg-cyan-subtle)
    (fg-active-argument fg-main)
    (bg-active-value bg-magenta-subtle)
    (fg-active-value fg-main)
  )
  "Semantic mappings shared by every Persian Landscapes theme.")

(defun persian-landscapes-themes--palette (base-colors preference)
  "Generate a complete palette from BASE-COLORS and PREFERENCE.
BASE-COLORS is an alist whose entries are (NAME VALUE) lists.
PREFERENCE is `cool' or `warm' and guides derived variants."
  (modus-themes-generate-palette
   base-colors
   preference
   nil
   persian-landscapes-themes--common-mappings))

;;; Anar -- pomegranate

(defconst persian-landscapes-anar-dark-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#30252C")
     (bg-dim     "#292127")
     (bg-alt     "#3A2D35")
     (bg-hl-line "#40313A")
     (bg-region  "#59404A")
     (fg-main    "#E9DFE0")
     (fg-dim     "#A68D91")
     (border     "#57434C")
     (cursor     "#83B6B1")
     (keyword    "#C58B9A")
     (fnname     "#D6A0A1")
     (type       "#80AAA4")
     (string     "#A8B78F")
     (constant   "#D4AD75")
     (error      "#D47B7B")
     (warning    "#D3AC68")
     (success    "#8FAE8A")
     (red        "#D47B7B")
     (green      "#8FAE8A")
     (yellow     "#D4AD75")
     (blue       "#9DB7C6")
     (magenta    "#C58B9A")
     (cyan       "#80AAA4"))
   'warm)
  "Anar Dark: pomegranate neutrals with rose, pistachio and turquoise.")

(defconst persian-landscapes-anar-light-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#E7DADD")
     (bg-dim     "#EFE5E7")
     (bg-alt     "#DED0D4")
     (bg-hl-line "#D9C9CE")
     (bg-region  "#CBB4BC")
     (fg-main    "#382B32")
     (fg-dim     "#72565E")
     (border     "#BDA8AE")
     (cursor     "#266B6C")
     (keyword    "#894C64")
     (fnname     "#7D4E56")
     (type       "#2A6364")
     (string     "#426043")
     (constant   "#815A2A")
     (error      "#A43F4B")
     (warning    "#7F5B25")
     (success    "#456A4D")
     (red        "#A43F4B")
     (green      "#456A4D")
     (yellow     "#815A2A")
     (blue       "#3F6474")
     (magenta    "#8C4F67")
     (cyan       "#306A6B"))
   'warm)
  "Anar Light: dusty rose surfaces with muted rose, pistachio and gold.")

;;; Kavir -- desert

(defconst persian-landscapes-kavir-dark-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#302D29")
     (bg-dim     "#292621")
     (bg-alt     "#3A352F")
     (bg-hl-line "#403A32")
     (bg-region  "#5A4C3D")
     (fg-main    "#E7E1D8")
     (fg-dim     "#A79A89")
     (border     "#5A4C3D")
     (cursor     "#8EA5A2")
     (keyword    "#C69B70")
     (fnname     "#D6B78C")
     (type       "#91A2A0")
     (string     "#A4AA85")
     (constant   "#D6B36D")
     (error      "#CA826E")
     (warning    "#D1A45E")
     (success    "#91A17C")
     (red        "#CA826E")
     (green      "#91A17C")
     (yellow     "#D6B36D")
     (blue       "#91A2A0")
     (magenta    "#B58E7E")
     (cyan       "#8EA5A2"))
   'warm)
  "Kavir Dark: warm desert stone with copper, sage and dusk blue.")

(defconst persian-landscapes-kavir-light-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#E6DFD3")
     (bg-dim     "#EEE8DE")
     (bg-alt     "#DCD3C5")
     (bg-hl-line "#D7CCBC")
     (bg-region  "#C9B8A1")
     (fg-main    "#38332B")
     (fg-dim     "#6C6252")
     (border     "#BBAE9B")
     (cursor     "#3F696C")
     (keyword    "#835B36")
     (fnname     "#825A3C")
     (type       "#406A6C")
     (string     "#556948")
     (constant   "#7F5D2B")
     (error      "#9C4C3C")
     (warning    "#805C26")
     (success    "#516A47")
     (red        "#9C4C3C")
     (green      "#516A47")
     (yellow     "#7F5D2B")
     (blue       "#406A6C")
     (magenta    "#865446")
     (cyan       "#406A6C"))
   'warm)
  "Kavir Light: pale mineral sand with clay, sage and dusk blue.")

;;; Kashi -- lapis

(defconst persian-landscapes-kashi-dark-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#252C38")
     (bg-dim     "#202630")
     (bg-alt     "#2D3644")
     (bg-hl-line "#333E4D")
     (bg-region  "#46566C")
     (fg-main    "#E1E5E9")
     (fg-dim     "#91A0B1")
     (border     "#46566C")
     (cursor     "#77B5C0")
     (keyword    "#82A9D4")
     (fnname     "#B2C1D6")
     (type       "#78AAA8")
     (string     "#9DBA9B")
     (constant   "#C6AD79")
     (error      "#D18483")
     (warning    "#C9A66E")
     (success    "#8FB39A")
     (red        "#D18483")
     (green      "#8FB39A")
     (yellow     "#C6AD79")
     (blue       "#82A9D4")
     (magenta    "#B4A2C6")
     (cyan       "#78AAA8"))
   'cool)
  "Kashi Dark: deep lapis blue-gray with cobalt, turquoise and aged gold.")

(defconst persian-landscapes-kashi-light-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#DCE3EB")
     (bg-dim     "#E7ECF1")
     (bg-alt     "#D1DAE5")
     (bg-hl-line "#CBD6E2")
     (bg-region  "#B8C9DC")
     (fg-main    "#293443")
     (fg-dim     "#54667B")
     (border     "#AABBD0")
     (cursor     "#246D79")
     (keyword    "#365F91")
     (fnname     "#425F84")
     (type       "#286E71")
     (string     "#476D51")
     (constant   "#775A2C")
     (error      "#A34449")
     (warning    "#805C29")
     (success    "#456B50")
     (red        "#A34449")
     (green      "#456B50")
     (yellow     "#775A2C")
     (blue       "#365F91")
     (magenta    "#6F5680")
     (cyan       "#286E71"))
   'cool)
  "Kashi Light: pale mineral stone with cobalt, turquoise and aged gold.")

;;; Goy -- glaze

(defconst persian-landscapes-goy-dark-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#263335")
     (bg-dim     "#202C2E")
     (bg-alt     "#2E3D3E")
     (bg-hl-line "#344647")
     (bg-region  "#46605F")
     (fg-main    "#E0E8E4")
     (fg-dim     "#91A9A0")
     (border     "#405958")
     (cursor     "#70AAA7")
     (keyword    "#91AFCB")
     (fnname     "#B0C5BE")
     (type       "#75B7B0")
     (string     "#A4B99B")
     (constant   "#C5A96F")
     (error      "#D2837C")
     (warning    "#C6A16A")
     (success    "#91B18C")
     (red        "#D2837C")
     (green      "#91B18C")
     (yellow     "#C5A96F")
     (blue       "#91AFCB")
     (magenta    "#B8A0B6")
     (cyan       "#75B7B0"))
   'cool)
  "Goy Dark: dark glazed surfaces with mineral blue, turquoise and sage.")

(defconst persian-landscapes-goy-light-palette
  (persian-landscapes-themes--palette
   '((bg-main    "#DCE7E2")
     (bg-dim     "#E7EFEB")
     (bg-alt     "#D1DFD9")
     (bg-hl-line "#C9DAD3")
     (bg-region  "#B6CEC5")
     (fg-main    "#293B3B")
     (fg-dim     "#48655B")
     (border     "#B0C9BF")
     (cursor     "#25716E")
     (keyword    "#406A89")
     (fnname     "#466864")
     (type       "#246F6C")
     (string     "#466A4C")
     (constant   "#765C2B")
     (error      "#A24C49")
     (warning    "#805E2D")
     (success    "#456B4E")
     (red        "#A24C49")
     (green      "#456B4E")
     (yellow     "#765C2B")
     (blue       "#406A89")
     (magenta    "#7C5D74")
     (cyan       "#246F6C"))
   'cool)
  "Goy Light: soft mineral green-gray with turquoise, mineral blue and sage.")

;;; Convenience commands and discovery

(modus-themes-define-derivative-command persian-landscapes-themes select)
(modus-themes-define-derivative-command persian-landscapes-themes toggle)
(modus-themes-define-derivative-command persian-landscapes-themes rotate)

(defun persian-landscapes-preview ()
  "Display a buffer with representative Persian Landscapes faces."
  (interactive)
  (with-current-buffer (get-buffer-create "*Persian Landscapes Preview*")
    (erase-buffer)
    (insert
     (propertize "Persian Landscapes\n" 'face 'bold)
     (propertize "Anar / Kavir / Kashi / Goy\n\n" 'face 'font-lock-comment-face)
     (propertize "Keywords " 'face 'font-lock-keyword-face)
     (propertize "functions " 'face 'font-lock-function-name-face)
     (propertize "types " 'face 'font-lock-type-face)
     (propertize "strings " 'face 'font-lock-string-face)
     (propertize "constants " 'face 'font-lock-constant-face)
     (propertize "comments\n\n" 'face 'font-lock-comment-face)
     (propertize "* Heading 1\n" 'face 'org-level-1)
     (propertize "** Heading 2\n" 'face 'org-level-2)
     (propertize "*** Heading 3\n" 'face 'org-level-3)
     (propertize "TODO " 'face 'org-todo)
     (propertize "DONE\n\n" 'face 'org-done)
     (propertize "  + added\n" 'face 'diff-added)
     (propertize "  - removed\n" 'face 'diff-removed)
     (propertize "  ! changed\n\n" 'face 'diff-changed)
     (propertize "Error: " 'face 'error)
     (propertize "warning: " 'face 'warning)
     (propertize "success\n" 'face 'success)
     (propertize "Region preview\n" 'face 'region)
     (propertize "Mode line preview\n" 'face 'mode-line)
     (propertize "Inactive mode line\n" 'face 'mode-line-inactive))
    (goto-char (point-min))
    (pop-to-buffer (current-buffer))))

;;;; Add themes from this package to the `custom-theme-load-path'

;;;###autoload
(when load-file-name
  (let ((dir (file-name-directory load-file-name)))
    (unless (member dir custom-theme-load-path)
      (add-to-list 'custom-theme-load-path dir))))

(provide 'persian-landscapes-themes)

;;; persian-landscapes-themes.el ends here
