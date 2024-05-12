#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export GOPATH=$HOME/go
export PATH=$HOME/scripts:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$GOPATH/bin
export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib:/usr/local/lib64
export COWPATH=/usr/share/cowsay/cows

alias ls='ls --color=auto'
alias ll='ls -lahv --ignore=..'
alias la='ls -axF'
alias update='~/scripts/update.sh'
alias emacs='~/scripts/emacs.sh'
alias update-grub='sudo grub2-mkconfig -o /boot/grub2/grub.cfg'
alias ssh='TERM=xterm ssh'
alias formatc='astyle --style=1tbs --indent=spaces=4 --pad-comma --convert-tabs'
alias formatrust='rustfmt --edition 2021'
alias rustdev='vim -c "cd ~/Documents/Development/rust" -c "NERDTree"'
alias cdev='vim -c "cd ~/Documents/Development/C++" -c "NERDTree"'
alias vim='vim -c "NERDTree | wincmd l" -c "autocmd BufEnter * if winnr(\"$\") == 1 && exists(\"b:NERDTree\") | q | endif"'
alias dev='vim -c "cd ~/Documents/Development" -c "NERDTree"'

eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
fortune | cowsay -f `ls /usr/share/cowsay/cows/ | shuf -n 1`
echo
echo " GREETINGS PROFESSOR ${USER^^}."
echo " SHALL WE PLAY A GAME?"
