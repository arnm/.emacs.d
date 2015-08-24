(arnm/util/after 'vc-git
  (arnm/package/require 'magit)

  (if (display-graphic-p)
      (progn
	(arnm/package/require 'git-gutter-fringe+)
	(require 'git-gutter-fringe+))
    (arnm/package/require 'git-gutter+))

  (global-git-gutter+-mode))

(arnm/package/require 'diff-hl)
(add-hook 'dired-mode-hook 'diff-hl-dired-mode)
(unless (display-graphic-p)
  (diff-hl-margin-mode))

(provide 'arnm-vcs)
