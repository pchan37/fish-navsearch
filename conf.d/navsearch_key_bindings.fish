# Default key bindings for inserting path
if bind -M insert >/dev/null 2>/dev/null
    bind -M insert \cs ns-skim-insert-from-root
    bind -M insert \cS ns-skim-insert-from-root
    bind -M insert \es ns-skim-insert-from-home
    bind -M insert \eS ns-skim-insert-from-home
else
    bind \cs ns-skim-insert-from-root
    bind \cS ns-skim-insert-from-root
    bind \es ns-skim-insert-from-home
    bind \eS ns-skim-insert-from-home
end

# Default key bindings for opening files
if bind -M insert >/dev/null 2>/dev/null
    bind -M insert \co ns-skim-open-files-from-root
    bind -M insert \cO ns-skim-open-files-from-root
    bind -M insert \eo ns-skim-open-files-from-pwd
    bind -M insert \eO ns-skim-open-files-from-pwd
    bind -m insert ':e ' ns-skim-open-files-from-pwd
    bind -m insert ':E ' ns-skim-open-files-from-root
else
    bind \co ns-skim-open-files-from-root
    bind \cO ns-skim-open-files-from-root
    bind \eo ns-skim-open-files-from-pwd
    bind \eO ns-skim-open-files-from-pwd
end

# Default key binding for changing directory
if bind -M insert >/dev/null 2>/dev/null
    bind -M insert \ec ns-skim-change-directory
    bind -M insert \eC ns-skim-change-directory
    bind -m insert ':b ' ns-skim-change-directory
else
    bind \ec ns-skim-change-directory
    bind \eC ns-skim-change-directory
end

# Default key binding for searching history
if bind -M insert >/dev/null 2>/dev/null
    bind -M insert \er ns-skim-search-history
    bind -M insert \eR ns-skim-search-history
    bind -m insert '/' ns-skim-search-history
else
    bind \er ns-skim-search-history
    bind \eR ns-skim-search-history
end
