# add the homebrew and some applications to PATH
export PATH="/opt/homebrew/bin:$PATH "
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

# init the zplug
source /opt/homebrew/Cellar/zplug/2.4.2/init.zsh 

zplug 'zsh-users/zsh-syntax-highlighting'

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ip)
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

POWERLEVEL9K_VIRTUALENV_BACKGROUND='springgreen4'

