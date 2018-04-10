#
# Cem dotfiles
#
# If not running interactive, do nothing
case $- in
    *i*) ;;
    *) return;;
esac

# Disable Ctrl-S
stty -ixon

# Enable Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set a fancy prompt 
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# enable programmable completion features
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi  
fi

# Add environment variable VISUAL for default editor
export VISUAL=vim;

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/opt/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH
 
# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/opt
export PATH=$COCOS_X_ROOT:$PATH
 
# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/opt/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
 
# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/opt/android-ndk
export PATH=$NDK_ROOT:$PATH
 
# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/opt/android-sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
 
# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/bin
export PATH=$ANT_ROOT:$PATH  

