# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/profile/bash/.{extra,bash_prompt,exports,aliases,functions,profile,migration}; do
  if [ -r "$file" ]
  then
    source "$file"
  else
    [[ "$file" != *".extra"* ]] && echo "$file doesn't exist or isn't readable"
  fi
done
unset file

# init z   https://github.com/rupa/z
# . ~/code/z/z.sh
. ~/profile/code/z/z.sh

. ~/profile/bash/completion/maven
# init rvm
# source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/bin

# grep color match
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='00;38;5;226'

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/$(whoami)/profile/bin/google-cloud-sdk/path.bash.inc" ]; then source "/Users/$(whoami)/profile/bin/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/$(whoami)/profile/bin/google-cloud-sdk/completion.bash.inc" ]; then source "/Users/$(whoami)/profile/bin/google-cloud-sdk/completion.bash.inc"; fi

# export PATH="$HOME/.jenv/bin:$PATH"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
# eval "$(jenv init -)"
