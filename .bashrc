#

# ~/.bashrc

#


# If not running interactively, don't do anything

[[ $- != *i* ]] && return


alias la='l -a'

alias ..='cd ..'

alias ...='cd ../..'



#safer file cmds

alias rm='rm -I'



alias confhypr='nano ~/dotfiles/hypr/hyprland.conf'



alias cl='clear'

alias ls='ls --color=auto'

alias grep='grep --color=auto'

alias syncwalls='cp ~/Downloads/*.{jpg,jpeg,png,webp} ~/Pictures/Wallpapers/'

PS1='[\u@\h \W]\$ '



# eza

alias ls="eza --icons --group-directories-first"

alias ll="eza -l --icons --git --group-directories-first -h"

alias tree="eza --tree --icons"




alias up='sudo pacman -Syu'


# doesn't really work, need to change script
alias define='~/dotfiles/scripts/./define'






#Csharp

export PATH="$PATH:$HOME/.dotnet/tools"



eval "$(starship init bash)"


eval "$(zoxide init bash)"

export PATH=$PATH:$(go env GOPATH)/bin

function cd() {

        if [ -z "$1" ]; then

                z

        else

                z "$@"

        fi

        

        if [ $? -eq 0 ]; then

                ls

        fi

}
export PATH="$PATH:$HOME/devFlutter/flutter/bin"
export PATH="$PATH:$HOME/Android/Sdk/emulator"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_USER_HOME="$HOME/.android"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export ANDROID_USER_HOME="$HOME/.config/.android"
export ANDROID_AVD_HOME="/home/ollel/.config/.android/avd/"
