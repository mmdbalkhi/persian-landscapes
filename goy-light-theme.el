;;; goy-light-theme.el --- Goy Light -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Komeil Parseh
;; Author: Komeil Parseh <komeilparseh@disroot.org>
;; Assisted-by: opencode:nvidia-nemotron-3.5-super-vl:free
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:
;; Glaze-inspired light theme from Persian Landscapes.

;;; Code:

(require 'persian-landscapes-themes)

(modus-themes-theme
 'goy-light
 'persian-landscapes
 "Glaze light: soft mineral green-gray with turquoise, mineral blue and sage."
 'light
 'persian-landscapes-goy-light-palette
 nil
 nil)

(provide 'goy-light-theme)

;;; goy-light-theme.el ends here
