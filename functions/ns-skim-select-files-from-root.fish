#!/usr/bin/env fish

function ns-skim-select-files-from-root
    if test -z "$NS_SKIM_CTRL_S_COMMAND"
        set -U NS_SKIM_CTRL_S_COMMAND "command $FD --hidden --no-ignore --full-path '.*' / --exclude .git"
    end
    ns-skim-select-files-filter-and-insert "$NS_SKIM_CTRL_S_COMMAND"
end
