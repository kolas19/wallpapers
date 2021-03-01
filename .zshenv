## Launch tmux at login ##
# [[ $(/usr/local/bin/tmux ls) == *"attached"* ]] || 
#     sleep 0.5 &&
#     $(/usr/local/bin/tmux -2 attach || /usr/local/bin/tmux -2)

################################
# User Configuration Variables #
################################

## The path to your local library directory ##
LIBRARYDIR=$HOME/.local/lib

## The name of your prefered editor ##
export EDITOR="nvim"

## The name of your prefered pager ##
export PAGER="less -R"

## The name of your prefered browser ##
export BROWSER="firefox"

######################
# XDG_HOME Variables #
######################
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

#############################
# FZF Environment Variables #
#############################
export FZF_DEFAULT_OPTS='--preview "bat --plain --color=always {}" --layout=reverse --border=rounded'
export FZF_DEFAULT_COMMAND='fd --type f --hidden'

############################
# Lf Environment Variables #
############################
export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"

################################
# Golang Environment Variables #
################################
export GOROOT="/usr/local/Cellar/go/*/libexec/"
export GOPATH="$LIBRARYDIR/golib:$HOME/.local"

#####################
# Add Paths to PATH #
#####################

## Add Various Python bin Folders to Path ##

[[ $OSTYPE == *"darwin"* ]] && 
    export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

# for i in $(/bin/ls -1 $LIBRARYDIR/Python); do
#     export PATH="$LIBRARYDIR/Python/$i/bin:$PATH"
# done

# for i in $(/bin/ls -1 /usr/local/Cellar | /usr/local/bin/rg "python"); do 
#     for d in $(/bin/ls -1 /usr/local/Cellar/$i); do 
#         export PATH="/usr/local/Cellar/$i/$d/bin:$PATH"
#     done
# done

## Add ~/.local/bin (location for binaries too small to be packages) ##
## to the PATH Environment Variable                                  ##
export PATH="$HOME/.local/bin:$PATH"

# Add the directory for rustup's bin dir to PATH ##
export PATH="$LIBRARYDIR/rustup/bin:$PATH"

# Add the directory for rustup's bin dir to PATH ##
export PATH="$LIBRARYDIR/cargo/bin:$PATH"

# Add the directory for golang's bin dir to PATH ##
export PATH="$LIBRARYDIR/golib/bin:$PATH"

############################
# Clean the Home Directory #
############################

export ZDOTDIR="$XDG_CONFIG_HOME/zsh" # Relocate zsh's home-directory
export PYLINTHOME="$HOME/.local/share/pylint.d" # Relocate pylint's data home
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc" # Relocate npm configuration files
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/config.py" # Point python towards a module to initialize with
export VIMSPECTOR_HOME="$HOME/.local/share/vimspector" # Relocate vimspector's log directory
export _ZL_DATA="$HOME/.local/share/z.lua/zlua" # Relocate z.lua's log files
export LESSHISTFILE="$HOME/.local/share/less/lesshst" # Relocate the lesshst file
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey" # Relocate lesskey file
export WD_CONFIG="$XDG_CONFIG_HOME/wd/init.warprc" # Relocate the warp-directory config file
export PASSWORD_STORE_DIR="$HOME/.local/share/pass/store" # Relocate password store
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg" # Relocate the gnupg home
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/config.notmuch" # Relocate the notmuch config

export XAUTHORITY="$XDG_CONFIG_HOME/X11/Xauthority" # Relocate the XAUTHORITY

## Relocate the directory for cargo's local libraries to $HOME/Library/cargo if    ##
## the system is a mac. Otherwise relocate the directory to $HOME/.local/lib/cargo ##
export CARGO_HOME="$LIBRARYDIR/cargo"

## Relocate the directory for rustup's local libraries to $HOME/Library/rustup if   ##
## the system is a mac. Otherwise relocate the directory to $HOME/.local/lib/rustup ##
export RUSTUP_HOME="$LIBRARYDIR/rustup"
