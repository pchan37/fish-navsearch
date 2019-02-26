#!/usr/bin/env fish

function ns-skim-search-history
    if ! type -q $NS_SKIM
        echo "skim/sk is not installed.  Please read the README on where you can find it."
        commandline -f repaint
        return 1
    end

    set -l selected_history (eval "history -z" | env SKIM_DEFAULT_OPTIONS="--prompt 'Search history: ' --tac --read0 $NS_SKIM_NAVIGATION_OPTS" $NS_SKIM)
    if test -n "$selected_history"
        commandline -i "$selected_history"
    end
    commandline -f repaint
    return $status
end
