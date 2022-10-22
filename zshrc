cat ~/.cache/wal/sequences
#autoload -Uz vcs_info
#precmd () { vcs_info }
neofetch --kitty /home/b/Downloads/Samurai-77-V.1.jpg --size 250px
#PS1='%n@%m %/ $ '
#PS1='%n@%m %F{green}%/%f $ '
#zstyle ':vcs_info:*' formats '%s(%b)'
#PS1='%n@%m %F{green}%/%f$vcs_info_msg_0_ $ '


#autoload -Uz vcs_info # enable vcs_info
#precmd () { vcs_info } # always load before displaying the prompt
#zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)
#setopt prompt_subst
#PS1='%n@%m %F{red}%/%f${vcs_info_msg_0_} $ '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%(?.%F{green}√.%F{red}?%?)%F{blue} %/ %F{yellow}${vcs_info_msg_0_}%F{magenta} %# '

setopt auto_cd
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/b/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /home/b/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/b/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
alias ininet="ssh u12783@ssh.hosting.ininet.hu -p55222"
alias surge="Surge\ XT"
alias p="python3"
alias write_something_beautiful="figlet -f /usr/share/figlet/fonts/basic.flf PETJAA | lolcat"
shut() {
t=$(($1 - 2))
(sleep "$(($t))m" && echo "$(uptime -p && uptime -s)" >> ~/uptime_statistics) &
shutdown +$1
}
