#!/usr/bin/env fish

mkdir -p $HOME/.config/fish/{functions,conf.d} >/dev/null
cd functions
ln -s (pwd)/ns-skim-change-directory.fish $HOME/.config/fish/functions/ns-skim-change-directory.fish 
ln -s (pwd)/ns-skim-insert-from-home.fish $HOME/.config/fish/functions/ns-skim-insert-from-home.fish
ln -s (pwd)/ns-skim-insert-from-root.fish $HOME/.config/fish/functions/ns-skim-insert-from-root.fish
ln -s (pwd)/ns-skim-open-files-from-pwd.fish $HOME/.config/fish/functions/ns-skim-open-files-from-pwd.fish
ln -s (pwd)/ns-skim-open-files-from-root.fish $HOME/.config/fish/functions/ns-skim-open-files-from-root.fish
ln -s (pwd)/ns-skim-select-files-filter-and-insert.fish $HOME/.config/fish/functions/ns-skim-select-files-filter-and-insert.fish
ln -s (pwd)/ns-skim-select-files-from-home.fish $HOME/.config/fish/functions/ns-skim-select-files-from-home.fish
ln -s (pwd)/ns-skim-select-files-from-root.fish $HOME/.config/fish/functions/ns-skim-select-files-from-root.fish
cd ../conf.d
ln -s (pwd)/navsearch.fish $HOME/.config/fish/conf.d/navsearch.fish
ln -s (pwd)/navsearch_key_bindings.fish $HOME/.config/fish/conf.d/navsearch_key_bindings.fish
