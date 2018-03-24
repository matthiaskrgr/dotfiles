# If you come from bash you might have to change your $PATH.
export PATH=$HOME/LLVM/LLVM6/stage_2/build/bin:$PATH
export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH

export RUSTFLAGS="-C target-cpu=native"

# switch to clang
export CXX=clang++
export CC=clang
# ninja build status 
export NINJA_STATUS="[%p/%f/%r/%t,%e] "

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# rust atom racer autocompletion
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

#fix rust term detecttion
export TERM=xterm

# tell less not to paginate if less than a page
export LESS='-XFR -f -M $LESS'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

ZSH_THEME="agnoster"
#ZSH_THEME="amuse"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
#HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=nano
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias alsamixer='/usr/bin/alsamixer -D hw'
alias la='ls -a'                # zeige auch versteckte Dateien
alias lsa='ls -ld .*'            # zeige nur versteckte Dateien
alias ll="ls -l --group-directories-first" # ls als Liste, Verzeichnisse ganz oben
alias ls='ls -aF --color=always' # Farbige Liste + Dateiendungen anzeigen
alias lx='ls -lXB'              # Sortierung nach Endung
alias lk='ls -lSr'              # Sortierung nach Grösse
alias lc='ls -lcr'               # Sortierung nach Änderungsdatum
alias lu='ls -lur'               # Sortierung nach letztem Zugriff
alias lt='ls -ltr'              # Sortierung nach Datum
alias lm='ls -al |more'         # ls mit more (scrollbar)
alias lr='ls -lR |more'         # Rekursive Liste mit more (scrollbar)
alias lg='ls | grep '           # ls im lokalen Verzeichnis mit grep
alias mv='nocorrect mv'       # Keine TypoKorrektur
alias cp='nocorrect cp'       #     ^        ^
alias mkdir='nocorrect mkdir' #     ^        ^

HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
unsetopt autocd

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

