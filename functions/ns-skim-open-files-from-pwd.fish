#!/usr/bin/env fish

function ns-skim-open-files-from-pwd
    if ! type -q $NS_FD
        echo "fd is not installed.  Please read the README on where you can find it."
        exit 1
    end

    if ! type -q $NS_SKIM
        echo "skim/sk is not installed.  Please read the README on where you can find it."
        exit 1
    end

    set -l get_files_cmd "fd --hidden --no-ignore --full-path --exclude .git --type f '\.*' ."
    set -l selected_files (eval "$get_files_cmd" | env SKIM_DEFAULT_OPTIONS="--prompt 'Open: ' -m $NS_SKIM_NAVIGATION_OPTS" sk)
    if test -n "$selected_files"
       emacs "$selected_files" -nw < /dev/tty
    end
    commandline -f repaint
    return $status
end
