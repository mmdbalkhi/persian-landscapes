;;; kavir-light-theme.el --- Kavir Light -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Desert-inspired light theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'kavir-light
 'persian-landscapes-themes
 "Desert light: pale sand, warm stone, clay, sage and dusk blue."
 'light
 'persian-landscapes-kavir-light-palette
 nil
 nil)

(provide 'kavir-light-theme)

;;; kavir-light-theme.el ends here
