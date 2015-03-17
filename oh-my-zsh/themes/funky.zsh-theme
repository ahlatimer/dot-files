# Taken from Tassilo's Blog
# http://tsdh.wordpress.com/2007/12/06/my-funky-zsh-prompt/

typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

setopt prompt_subst

export __CURRENT_GIT_BRANCH=

parse_git_branch() {
    git branch --no-color 2> /dev/null \
        | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

preexec_functions+='zsh_preexec_update_git_vars'
zsh_preexec_update_git_vars() {
    case "$(history $HISTCMD)" in 
        *git*)
        export __CURRENT_GIT_BRANCH="$(parse_git_branch)"
        ;;
    esac
}

chpwd_functions+='zsh_chpwd_update_git_vars'
zsh_chpwd_update_git_vars() {
    export __CURRENT_GIT_BRANCH="$(parse_git_branch)"
}

get_git_prompt_info() {
    echo $__CURRENT_GIT_BRANCH
}

local blue_op="%{$fg[red]%}[%{$reset_color%}"
local blue_cp="%{$fg[red]%}]%{$reset_color%}"
local path_p="${blue_op}%2/${blue_cp}"
local user_host="${blue_op}%n@%m${blue_cp}"
local ret_status="${blue_op}%?${blue_cp}"
local hist_no="${blue_op}%D{%m-%d %H:%M}${blue_cp}"
local git_prompt='$(get_git_prompt_info)'
PROMPT="┌${path_p}─${hist_no}-${blue_op}${git_prompt}${blue_cp}
└${ret_status} %# "
local cur_cmd="${blue_op}%_${blue_cp}"
PROMPT2="${cur_cmd}> "
