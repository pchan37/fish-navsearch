#!/usr/bin/env fish

set -U NS_ENHANCD_SCRIPT_DIRECTORY (dirname (readlink -f (status -f)))
set -U NS_RUST_ENHANCD "$NS_ENHANCD_SCRIPT_DIRECTORY/../rust-enhancd"
if type -q rust-enhancd
    set -U NS_RUST_ENHANCD "rust-enhancd"
end

set -U NS_FD "$NS_ENHANCD_SCRIPT_DIRECTORY/../fd"
if type -q fd
    set -U NS_FD "fd"
end

set -U NS_SKIM "$NS_ENHANCD_SCRIPT_DIRECTORY/../sk"
if type -q sk
    set -U NS_SKIM "sk"
end

set -U NS_SKIM_NAVIGATION_TMUX_HEIGHT 15
if test -z "$NS_SKIM_GENERAL_NAVIGATION_OPTS"
    set -xU NS_SKIM_GENERAL_NAVIGATION_OPTS "--color=dark,matched:75 --bind 'alt-a:beginning-of-line,alt-e:end-of-line,ctrl-k:kill-line,alt-k:up,alt-j:down,alt-g:abort'"
end

set -U NS_SKIM_NAVIGATION_OPTS "--height $NS_SKIM_NAVIGATION_TMUX_HEIGHT --reverse $SKIM_DEFAULT_OPTIONS $NS_SKIM_GENERAL_NAVIGATION_OPTS"
