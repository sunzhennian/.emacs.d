(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time
(defconst *is-a-mac* (eq system-type 'darwin))
;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
(require 'init-elpa)      ;; Machinery for installing required packages
(require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-sessions)
(require 'init-gui-frames)
(require-package 'org '(8))
(require-package 'diminish)
(require 'init-org-mode)
(require 'init-git)
(require 'init-el-get)
(require 'init-themes)
(require 'init-recentf)
(require 'init-ido)
(require 'init-ibuffer)
(require 'init-windows)
;(require 'init-yasnippets)
(require 'init-org-site)
;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
(load custom-file))
