#!/usr/bin/env fish

function ns-skim-change-directory
    set -l get_dir_cmd "$NS_RUST_ENHANCD getkeys"
    set -l selected_dir (eval "$get_dir_cmd" | env SKIM_DEFAULT_OPTIONS="--prompt 'Switch to: ' $NS_SKIM_NAVIGATION_OPTS" sk)
    if test -n "$selected_dir"
        $NS_RUST_ENHANCD update "$selected_dir"
        cd "$selected_dir"
    end
    commandline -f repaint
    return $status
end
