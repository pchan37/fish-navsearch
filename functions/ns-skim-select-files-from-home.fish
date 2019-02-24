#!/usr/bin/env fish

function ns-skim-select-files-from-home
    if ! type -q $NS_FD
        echo "fd is not installed.  Please read the README on where you can find it."
        exit 1
    end

    if ! type -q $NS_SKIM
        echo "skim/sk is not installed.  Please read the README on where you can find it."
        exit 1
    end

    if test -z "$NS_SKIM_ALT_S_COMMAND"
        set -U NS_SKIM_ALT_S_COMMAND "command $FD --hidden --no-ignore --full-path '.*' $HOME --exclude .git"
    end
    ns-skim-select-files-filter-and-insert "$NS_SKIM_ALT_S_COMMAND"
end
