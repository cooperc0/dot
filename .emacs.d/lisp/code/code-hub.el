(add-to-list 'load-path (concat (file-name-directory load-file-name) "languages/"))

(kotct/hub "code"
           (magit-c
            indentation
            code-navigation
            language-hub))

(provide 'code-hub)
