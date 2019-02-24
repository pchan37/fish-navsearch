#!/usr/bin/env fish

function ns-skim-select-files-filter-and-insert
    set -l cmd "$argv[1]"
    eval "$cmd" | env SKIM_DEFAULT_OPTIONS="--prompt 'Insert: ' $NS_SKIM_NAVIGATION_OPTS" sk -m | while read item
        echo -n "$item "
    end
    return $status
end
