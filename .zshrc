# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Change ls colours
export LS_COLORS="ow=01;36;40"

# Make cd use ls colours
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-completions extract)

source $ZSH/oh-my-zsh.sh

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

export PATH=~/bin:$PATH

# Using WSL, will help forward GUI applications to X server
export DISPLAY=:0

zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes

_force_rehash() {
	(( CURRENT == 1 )) && rehash
	return 1
}

zstyle ':completion:::::' completer _oldlist _expand _force_rehash _complete _approximate

zstyle ':completion:*:descriptions' format '%B%d%b'
# zstyle ':completion:*:descriptions' format "- %d -"

zstyle ':completion:*:corrections' format "- %d - (errors %e)"

zstyle ':completion:*:default' list-prompt '%S%M matches%s'

zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true

zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'

zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) numeric )'
zstyle ':completion::approximate*:*' prefix-needed false


# # Magically quote urls
# autoload -U url-quote-magic
# zle -N self-insert url-quote-magic

# # Follow GNU LS_COLORS
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# # insert all expansions for expand completer
# zstyle ':completion:*:expand:*' keep-prefix true tag-order all-expansions

# # highlight parameters with uncommon names
# zstyle ':completion:*:parameters' list-colors "=[^a-zA-Z]*=$color[red]"

# # highlight aliases
# zstyle ':completion:*:aliases' list-colors "=*=$color[green]"

# # highlight the original input.
# zstyle ':completion:*:original' list-colors "=*=$color[red];$color[bold]"

# # highlight words like 'esac' or 'end'
# zstyle ':completion:*:reserved-words' list-colors "=*=$color[red]"

# # With commands like `rm' it's annoying if one gets offered the same filename
# # again even if it is already on the command line. To avoid that:
# zstyle ':completion:*:rm:*' ignore-line yes

# # Manpages, ho!
# zstyle ':completion:*:manuals' separate-sections true
# zstyle ':completion:*:manuals.(^1*)' insert-sections true

# ## add colors to processes for kill completion
# zstyle ':completion:*:*:kill:*' verbose yes
# zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#) #([^ ]#)*=$color[cyan]=$color[yellow]=$color[green]"

# # Make the nice with git completion and others
# zstyle ':completion::*:(git|less|rm|vim|most)' ignore-line true

# # Attempt to complete many parts at once
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# # Ignore where we are when completing directory names
# #zstyle ':completion:*' ignore-parents parent pwd directory

# # Completion list settings
# # zstyle ':completion:*' format 'Completing %d'
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' list-suffixes true
# zstyle ':completion:*' menu select
# zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

# # Expansion options
# zstyle ':completion:*' completer _complete _list _oldlist _expand _ignored _match _correct _approximate _prefix
# zstyle ':completion:*' completer _complete _prefix
# zstyle ':completion::prefix-1:*' completer _complete
# zstyle ':completion:incremental:*' completer _complete _correct
# zstyle ':completion:predict:*' completer _complete

# # Completion caching
# zstyle ':completion:*' use-cache on
# zstyle ':completion:*' cache-path "$ZSH_CACHE"

# # Expand partial paths
# zstyle ':completion:*' expand 'yes'
# zstyle ':completion:*' squeeze-slashes 'yes'

# # Insert as much as possible
# zstyle ':completion:*:match:*' glob true
# zstyle ':completion:*:match:*' original only
# zstyle ':completion:*:match:*' insert-unambiguous true

# # Include non-hidden directories in globbed file completions
# # for certain commands

# zstyle ':completion::complete:*' '\'

# # Use menuselection for pid completion
# zstyle ':completion:*:*:kill:*' menu yes select
# zstyle ':completion:*:processes' command 'ps -au$USER'
# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'

# #  tag-order 'globbed-files directories' all-files
# zstyle ':completion::complete:*:tar:directories' file-patterns '*~.*(-/)'

# # Don't complete backup files as executables
# zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'

# # formatting and messages
# zstyle ':completion:*' verbose yes
# zstyle ':completion:*:descriptions' format "- %{${fg[yellow]}%}%d%{${reset_color}%} -"
# zstyle ':completion:*:messages' format '%d'
# zstyle ':completion:*:warnings' format 'No matches for: %d'
# zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
# zstyle ':completion:*' group-name ''
# zstyle ':completion:*' list-separator '#'
# zstyle ':completion:*' auto-description 'specify: %d'
# zstyle ':completion:*:default' list-prompt '%S%M matches%s'
# zstyle ':completion:*:prefix:*' add-space true

# # Separate matches into groups
# zstyle ':completion:*:matches' group 'yes'

# ## Describe each match group.
# zstyle ':completion:*:descriptions' format "%B---- %d%b"

# ## Describe options in full
# zstyle ':completion:*:options' description 'yes'
# zstyle ':completion:*:options' auto-description '%d'

# #  tag-order 'globbed-files directories' all-files
# zstyle ':completion::complete:*:tar:directories' file-patterns '*~.*(-/)'
# # Don't complete backup files as executables
# zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'

# # pasting with tabs doesn't perform completion
# zstyle ':completion:*' insert-tab pending

# compdef '_files -g "*.{pdf,ps,tiff,dvi}"' evince apvlv zathura
# compdef '_files -g "*.{mkv,avi,wmv,mov,m4a,mpg,mpeg,mp4,part,mp3,ogg,ogv,flv,rm,vob}"' mplayer mn ml m xine vlc
# compdef '_files -g "*.{jpeg,jpg,gif,png,tiff,raw}"' feh images gqview xv gthumb sxiv geeqie
# compdef '_files -g "*.{z,gz,tgz}"' open zcat gunzip tar 7z 7za 7zr atool
# compdef '_files -g "*.{bz2,tbz2}"' open bzcat tar bzip2 7z 7za 7zr atool
# compdef '_files -g "*.{zip}"' open zip unzip 7z 7za 7zr atool
# compdef '_files -g "*.{rar}"' open rar unrar 7z 7za 7zr atool
# compdef '_files -g "*.{xz,txz,lzma}"' open unlzma lzma tar atool

# zstyle ':completion:*' file-patterns \
#     '%p:globbed-files: *(-/):directories:Directories' '*:all-files'

# zstyle ':completion::*:git-{name-rev,add,rm}:*' ignore-line true

# #compctl -g '*(-/)' + -g '.*(-/)' -v cd pushd rmdir dirs chdir

# # Don't complete uninteresting users
# zstyle ':completion:*:*:*:users' ignored-patterns \
#         adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
#         dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
#         hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
#         mailman mailnull mldonkey mysql nagios \
#         named netdump news nfsnobody nobody nscd ntp nut nx openvpn \
#         operator pcap postfix postgres privoxy pulse pvm quagga radvd \
#         rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs

# function expand-or-complete-with-dots() {
#   echo -n "\e[31m......\e[0m"
#   zle expand-or-complete
#   zle redisplay
# }
# zle -N expand-or-complete-with-dots
# bindkey "^I" expand-or-complete-with-dots

# `cd` is two letter I am too lazy to type
setopt autocd
