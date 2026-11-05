;;; anar-light-theme.el --- Anar Light -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Pomegranate-inspired light theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'anar-light
 'persian-landscapes-themes
 "Pomegranate light: dusty rose surfaces with muted rose, pistachio and gold."
 'light
 'persian-landscapes-anar-light-palette
 nil
 nil)

(provide 'anar-light-theme)

;;; anar-light-theme.el ends here
