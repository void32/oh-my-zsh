PROMPT='$(print_chroot)$(print_user)%{$fg[green]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} '

# chroot info
function print_chroot()
{
  if [ -f /etc/debian_chroot ];
  then
    echo "($(cat /etc/debian_chroot))";
  fi
}

# user info
function print_user()
{
  # Don't care unless it is the root user - he's scary
  if [[ $(whoami) == "root" ]]; then 
    echo "$(whoami)@$(hostname):";
  fi
}

# git info
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✗%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔%{$fg_bold[blue]%}"

# Keypad
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
 bindkey -s "^[Oo" "/"
