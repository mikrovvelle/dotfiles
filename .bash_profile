# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/q/m32

# Autocorrect typos in path names when using `cd`
shopt -s cdspell
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
export LD_LIBRARY_PATH=/usr/local/Cellar/cairo/1.10.2/lib

export JULIAPATH=$HOME/src/julia
export PATH=$PATH:$JULIAPATH

alias q="rlwrap q"
alias N='cd ~/src/Nagler'
alias P='cd ~/src/Nagler/PuMa'
alias f='find . -iname'
alias gf='find . ! -ipath "*.git*"'

alias pc='proxychains'
export PS1='\u@\h:\w$ '

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Finder Dock Mail Safari iTunes iCal Address\ Book SystemUIServer" killall