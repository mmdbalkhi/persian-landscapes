;;; kashi-dark-theme.el --- Kashi Dark -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Lapis-inspired dark theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'kashi-dark
 'persian-landscapes
 "Lapis dark: deep blue-gray with cobalt, turquoise and aged gold."
 'dark
 'persian-landscapes-kashi-dark-palette
 nil
 nil)

(provide 'kashi-dark-theme)

;;; kashi-dark-theme.el ends here
