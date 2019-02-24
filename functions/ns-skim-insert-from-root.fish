#!/usr/bin/env fish

function ns-skim-insert-from-root
    set -l selected_files (ns-skim-select-files-from-root)
    if test -n "$selected_files"
        commandline -i "$selected_files"
    end
    commandline -f repaint
    return $status
end
