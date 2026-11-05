;;; kashi-light-theme.el --- Kashi Light -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Lapis-inspired light theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'kashi-light
 'persian-landscapes-themes
 "Lapis light: pale mineral stone with cobalt, turquoise and aged gold."
 'light
 'persian-landscapes-kashi-light-palette
 nil
 nil)

(provide 'kashi-light-theme)

;;; kashi-light-theme.el ends here
