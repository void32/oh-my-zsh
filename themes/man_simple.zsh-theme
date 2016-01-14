PROMPT='$(print_user) %{$fg[green]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%} '

#user info
function print_user()
{
  # Don't care unless it is the root user - he's scary
  if [[ $(whoami) == "root" ]]; then 
    echo "$(whoami)@$(hostname)";
  else
    echo "";
  fi
}

# git info
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✗%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔%{$fg_bold[blue]%}"
