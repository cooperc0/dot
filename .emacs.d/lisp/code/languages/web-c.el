(require 'indentation)

;; Make a bunch of extensions open as web mode things.
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsonp?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Don't indent Meta-HTML control blocks, and don't
;; apply any padding to <script> tags in HTML.
(setf web-mode-enable-control-block-indentation nil)
(setf web-mode-script-padding 0)

(add-hook 'web-mode-hook (lambda () (setf indent-tabs-mode t)))

;; set and keep all of the indent-offsets updated
(kotct/setf-tab web-mode-markup-indent-offset)
(kotct/setf-tab web-mode-css-indent-offset)
(kotct/setf-tab web-mode-code-indent-offset)

(provide 'web-c)
