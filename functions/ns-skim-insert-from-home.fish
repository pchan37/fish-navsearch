#!/usr/bin/env fish

function ns-skim-insert-from-home
    if ! type -q $NS_FD
        echo "fd is not installed.  Please read the README on where you can find it."
        exit 1
    end

    if ! type -q $NS_SKIM
        echo "skim/sk is not installed.  Please read the README on where you can find it."
        exit 1
    end

    set -l selected_files (ns-skim-select-files-from-home)
    if test -n "$selected_files"
        commandline -i "$selected_files"
    end
    commandline -f repaint
    return $status
end
