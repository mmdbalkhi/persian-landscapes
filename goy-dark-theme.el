;;; goy-dark-theme.el --- Goy Dark -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Glaze-inspired dark theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'goy-dark
 'persian-landscapes
 "Glaze dark: dark glazed surfaces with mineral blue, turquoise and sage."
 'dark
 'persian-landscapes-goy-dark-palette
 nil
 nil)

(provide 'goy-dark-theme)

;;; goy-dark-theme.el ends here
