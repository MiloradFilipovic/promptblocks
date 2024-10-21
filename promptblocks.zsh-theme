local pwd='%{$fg_bold[cyan]%}%~%{$reset_color%}'
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'

function node_js_version {
    if which node &> /dev/null; then
        local node_version=$(node -v | sed 's/v//')  # Remove the 'v'
        echo "[%{$fg[magenta]%}⬢ ${node_version}%{$reset_color%}] "
    fi
}

function git_prompt {
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        local git_branch='$(parse_git_dirty)'
        local GIT_PROMPT="[${git_branch}$(git_commits_behind)$(git_commits_ahead)%{$reset_color%}]"
        echo $GIT_PROMPT
    fi
}

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[yellow]%}$(git_current_branch)*"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]%}$(git_current_branch)"
ZSH_THEME_GIT_COMMITS_BEHIND_PREFIX=" ↓"
ZSH_THEME_GIT_COMMITS_BEHIND_SUFFIX=""
ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX=" ↑"
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX=""
ZSH_THEME_GIT_PROMPT_MODIFIED=""

NEWLINE=$'\n'
PROMPT="${pwd} $(git_prompt)$(node_js_version)${NEWLINE}⚡️"
RPROMPT="${return_code}"
