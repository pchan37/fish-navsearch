#!/usr/bin/env fish

function ns-skim-insert-from-root
    if ! type -q $NS_FD
        echo "fd is not installed.  Please read the README on where you can find it."
        commandline -f repaint
        return 1
    end

    if ! type -q $NS_SKIM
        echo "skim/sk is not installed.  Please read the README on where you can find it."
        commandline -f repaint
        return 1
    end

    set -l selected_files (ns-skim-select-files-from-root)
    if test -n "$selected_files"
        commandline -i "$selected_files"
    end
    commandline -f repaint
    return $status
end
