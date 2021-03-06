#!/bin/emacs --script

(let ((org-document-content "")
    this-read)
    (while (setq this-read (ignore-errors
                             (read-from-minibuffer "")))
      (setq org-document-content (concat org-document-content "\n" this-read)))

    (with-temp-buffer
      (org-mode)
      (insert org-document-content)
      (org-html-export-as-html nil nil t t)
      (princ (buffer-string))))
