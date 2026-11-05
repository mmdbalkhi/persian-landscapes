;;; anar-dark-theme.el --- Anar Dark -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Pomegranate-inspired dark theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'anar-dark
 'persian-landscapes-themes
 "Pomegranate dark: deep reddish neutrals with muted rose, pistachio and turquoise."
 'dark
 'persian-landscapes-anar-dark-palette
 nil
 nil)

(provide 'anar-dark-theme)

;;; anar-dark-theme.el ends here
