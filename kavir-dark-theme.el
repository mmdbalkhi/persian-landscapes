;;; kavir-dark-theme.el --- Kavir Dark -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Desert-inspired dark theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'kavir-dark
 'persian-landscapes-themes
 "Desert dark: warm stone, copper, dry sage and dusk blue."
 'dark
 'persian-landscapes-kavir-dark-palette
 nil
 nil)

(provide 'kavir-dark-theme)

;;; kavir-dark-theme.el ends here
