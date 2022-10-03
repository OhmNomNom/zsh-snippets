user_prompt='%F{yellow}%n@%m%f'
dir_prompt='%F{cyan}%~%f'
n=$'\n'
ind='%B%(?.%F{green}.%F{red})%#%f%b' # % for nonroot, # for root, colored based on last command

PROMPT="\
${user_prompt} ${dir_prompt}
${ind} "
RPROMPT="%F{red}[%D %*]%f"


# Refresh the prompt to update time
TMOUT=1
TRAPALRM() {
    if [[ "${WIDGET}" != fzf-* ]]; then
        zle reset-prompt
    fi
}

