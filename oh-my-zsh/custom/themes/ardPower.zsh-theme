# ZSH Theme - ard_BoA
# Author: Anirban Roy Das <anirban.nick@gmail.com>
# Prompt is inspired by the oh-my-zsh version of user Graawr's 'Classy Touch' and  oh-my-zsh theme 'Steeef'
#
###############

export VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('%F{blue}`basename $VIRTUAL_ENV`%f') '
}
PR_GIT_UPDATE=1

setopt prompt_subst

autoload -U add-zsh-hook
autoload -Uz vcs_info

#use extended color pallete if available
if [[ $terminfo[colors] -ge 256 ]]; then
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
else
    turquoise="%F{cyan}"
    orange="%F{yellow}"
    purple="%F{magenta}"
    hotpink="%F{red}"
    limegreen="%F{green}"
fi

# enable VCS systems you use
zstyle ':vcs_info:*' enable git svn

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stagedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
PR_RST="%f"
FMT_BRANCH="%{$fg_bold[green]%}[git-repo] %{$fg_bold[yellow]%}±%{$reset_color%} (%{$turquoise%}%b%u%c${PR_RST})"
FMT_ACTION="%{$fg_bold[green]%}[git-repo] %{$fg_bold[yellow]%}±%{$reset_color%} (%{$limegreen%}%a${PR_RST})"
FMT_UNSTAGED="%{$orange%}●"
FMT_STAGED="%{$limegreen%}●"

zstyle ':vcs_info:*:prompt:*' unstagedstr   "${FMT_UNSTAGED}"
zstyle ':vcs_info:*:prompt:*' stagedstr     "${FMT_STAGED}"
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}"
zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""


function steeef_preexec {
    case "$(history $HISTCMD)" in
        *git*)
            PR_GIT_UPDATE=1
            ;;
        *svn*)
            PR_GIT_UPDATE=1
            ;;
    esac
}
add-zsh-hook preexec steeef_preexec

function steeef_chpwd {
    PR_GIT_UPDATE=1
}
add-zsh-hook chpwd steeef_chpwd

function steeef_precmd {
    if [[ -n "$PR_GIT_UPDATE" ]] ; then
        # check for untracked files or updated submodules, since vcs_info doesn't
        if git ls-files --other --exclude-standard 2> /dev/null | grep -q "."; then
            PR_GIT_UPDATE=1
            FMT_BRANCH="%{$fg_bold[green]%}[git-repo] %{$fg_bold[yellow]%}±%{$reset_color%} (%{$turquoise%}%b%u%c%{$hotpink%}●${PR_RST})"
        else
            FMT_BRANCH="%{$fg_bold[green]%}[git-repo] %{$fg_bold[yellow]%}±%{$reset_color%} (%{$turquoise%}%b%u%c${PR_RST})"
        fi
        zstyle ':vcs_info:*:prompt:*' formats "${FMT_BRANCH} "

        vcs_info 'prompt'
        PR_GIT_UPDATE=
    fi
}
add-zsh-hook precmd steeef_precmd

#PROMPT=$'
#%{$purple%}%n${PR_RST}@%{$orange%}%m${PR_RST} in %{$limegreen%}%~${PR_RST} $vcs_info_msg_0_$(virtualenv_info)
#$ '

local current_user='%{$fg[red]%}[%{$fg_bold[green]%}λ %{$purple%}%n${PR_RST}@%{$orange%}%m${PR_RST}%{$fg[red]%}] %{$fg[magenta]%} %{$fg[red]%}[%{$fg[green]%}%c%{$fg[red]%}] %{$fg[yellow]%} %{$reset_color%}'

local current_dir='%{$fg[red]%}[%{$fg_bold[yellow]%}λ %{$reset_color%}%~% %{$fg[red]%}]%{$reset_color%}'

local current_time='%{$fg[red]%}{%{$fg_bold[cyan]%}⚙ %{$fg_bold[yellow]%}%T%{$fg[red]%}}%{$reset_color%} %{$fg_bold[magenta]%}⚡%{$reset_color%} $vcs_info_msg_0_$(virtualenv_info)'

PROMPT="%(?,%{$fg[red]%}┌─╼${current_user}%{$reset_color%}
%{$fg[red]%}└─┌─╼${current_time}%{$reset_color%}
%{$fg[red]%}  └────o%{$reset_color%} "




