;; (exec-path-from-shell-initialize)
(add-hook 'after-init-hook (lambda ()
                             (when (executable-find "tern")
                               (add-hook 'web-mode-hook (lambda () (tern-mode +1)))
                               (with-eval-after-load 'tern
                                 (tern-ac-setup)))))
(global-flycheck-mode +1)
(flycheck-add-mode 'javascript-eslint 'web-mode)
(setf web-mode-auto-quote-style 2)
