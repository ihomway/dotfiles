
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
test -d "/opt/homebrew/bin" ; and set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths

set opdir (brew --prefix openssl@1.1)
set -x RUBY_CONFIGURE_OPTS "--with-openssl-dir=$opdir"
status --is-interactive; and source (rbenv init -|psub)
status is-login; and pyenv init --path | source
pyenv init - | source

# workspace
set -x loktar "/Users/puer/Developer/bilibili/loktar/"
set -x mtc "/Users/puer/Developer/bilibili/loktar/srcs/app/mtc-biz/"
set -x mtc_hd "/Users/puer/Developer/bilibili/loktar/srcs/app/mtc-hd-biz/"
set -g fish_user_paths "$loktar" $fish_user_paths

# zlib
set -gx LDFLAGS "-L/usr/local/opt/zlib/lib"
set -gx CPPFLAGS "-I/usr/local/opt/zlib/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/zlib/lib/pkgconfig"# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/puer/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/puer/.ghcup/bin $PATH

# apple llvm to homebrew llvm
set -gx LDFLAGS "-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
set -gx CPPFLAGS "-I/usr/local/opt/llvm/include"
set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths

# add openssl@1.1
set -gx LDFLAGS "-L/usr/local/opt/openssl@1.1/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl@1.1/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl@1.1/lib/pkgconfig"

# add openjdk@11
set -g fish_user_paths "/usr/local/opt/openjdk@11/bin" $fish_user_paths
set -x GPG_TTY (tty)

# use gmake as make
set -g fish_user_paths "/usr/local/opt/make/libexec/gnubin" $fish_user_paths

# golang
set -gx GOPATH "/Users/puer/Developer/go"
set -g fish_user_paths (go env GOPATH) $fish_user_paths
