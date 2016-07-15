
set -gx NPM_PACKAGES $HOME/.npm-packages

set -gx PATH $HOME/.cargo/bin/ $NPM_PACKAGES/bin $HOME/.local/bin /usr/local/bin $HOME/.stack/snapshots/x86_64-linux/lts-5.14/7.10.3/bin $HOME/.stack/programs/x86_64-linux/ghc-7.10.3/bin $PATH

set -gx RUST_SRC_PATH $HOME/.cargo/rustc-1.8.0/src

set -U EDITOR nvim

alias :wq=exit
alias :q=exit
alias vim=nvim

#/[ -f ~/.fzf.zsh ] & source ~/.fzf.zsh

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/base16-default.dark.sh
end

## Avoid greeting because completion in nvim
#function fish_greeting
#end

#funcsave fish_greeting
