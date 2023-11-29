test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
test -d "/opt/homebrew/bin" ; and set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths
test -d "/opt/homebrew/sbin" ; and set -g fish_user_paths "/opt/homebrew/sbin" $fish_user_paths
# test -d "/opt/homebrew/lib" ; and set -g fish_user_paths "/opt/homebrew/lib" $fish_user_paths

# workspace
set -x loktar "/Users/puer/Developer/bilibili/loktar/"
set -x mtc "/Users/puer/Developer/bilibili/loktar/srcs/app/mtc-biz/"
set -x mtc_hd "/Users/puer/Developer/bilibili/loktar/srcs/app/mtc-hd-biz/"

# ghcup
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/puer/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/puer/.ghcup/bin $PATH

# add openjdk@11
set -g fish_user_paths "/opt/homebrew/opt/openjdk/bin" $fish_user_paths
set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk/include"
set -x GPG_TTY (tty)

# golang
set -gx GOPATH "/Users/puer/Developer/go"
set -g fish_user_paths (go env GOPATH) $fish_user_paths

# set vim as the default editpr
set -gx EDITOR (which vim)

# mint
set -g fish_user_paths "/Users/puer/.mint/bin" $fish_user_paths

# Starship
starship init fish | source

# https://github.com/jhillyerd/plugin-git/issues/90
set -e __git_plugin_initialized
__git.init

# Enable Vi Mode
fish_vi_key_bindings
source /opt/homebrew/opt/asdf/libexec/asdf.fish
set -gx  LC_ALL en_US.UTF-8
set -gx  LANG en_US.UTF-8
