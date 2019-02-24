# Default key bindings for inserting path
if test "$__fish_active_key_bindings" = "fish_vi_key_bindings"
    bind --preset -M insert \cs ns-skim-insert-from-root
    bind --preset -M insert \cS ns-skim-insert-from-root
    bind --preset -M insert \es ns-skim-insert-from-home
    bind --preset -M insert \eS ns-skim-insert-from-home
else
    bind \cs ns-skim-insert-from-root
    bind \cS ns-skim-insert-from-root
    bind \es ns-skim-insert-from-home
    bind \eS ns-skim-insert-from-home
end

# Default key bindings for opening files
if test "$__fish_active_key_bindings" = "fish_vi_key_bindings"
    bind --preset -M insert \co ns-skim-open-files-from-root
    bind --preset -M insert \cO ns-skim-open-files-from-root
    bind --preset -M insert \eo ns-skim-open-files-from-pwd
    bind --preset -M insert \eO ns-skim-open-files-from-pwd
else
    bind \co ns-skim-open-files-from-root
    bind \cO ns-skim-open-files-from-root
    bind \eo ns-skim-open-files-from-pwd
    bind \eO ns-skim-open-files-from-pwd
end

# Default key binding for changing directory
if test "$__fish_active_key_bindings" = "fish_vi_key_bindings"
    bind --preset -M insert \ec ns-skim-change-directory
    bind --preset -M insert \eC ns-skim-change-directory
else
    bind \ec ns-skim-change-directory
    bind \eC ns-skim-change-directory
end
