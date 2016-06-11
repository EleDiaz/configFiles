
set -gx NPM_PACKAGES $HOME/.npm-packages

set -gx PATH $HOME/.cargo/bin/ NPM_PACKAGES/bin $HOME/.local/bin /usr/local/bin $HOME/.stack/snapshots/x86_64-linux/lts-5.14/7.10.3/bin $HOME/.stack/programs/x86_64-linux/ghc-7.10.3/bin $PATH

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
#unset MANPATH # delete if you already modified MANPATH elsewhere in your config
set -gx  MANPATH $NPM_PACKAGES/share/man (manpath)

set -gx RUST_SRC_PATH $HOME/.cargo/rustc-1.8.0/src

set -U EDITOR nvim

alias :wq=exit
alias :q=exit
alias vim=nvim

#/[ -f ~/.fzf.zsh ] & source ~/.fzf.zsh

eval sh $HOME/.config/base16-shell/base16-default.dark.sh

