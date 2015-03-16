# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# init rvm
source ~/.rvm/scripts/rvm

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


export MV_HOME="/opt/local/share/java/maven3"
# add grails
export GRAILS_HOME="~/herdWisdom/grails-2.3.7/bin"
export PATH=$GRAILS_HOME:$PATH
export GRAILS_OPTS="-XX:MaxPermSize=512m -Xmx2048M -Xms1024m"
export ANDROID_HOME="/Users/ofortin/android-sdk-macosx"
export ANDROID_TOOL="/Users/ofortin/android-sdk-macosx/tools"
export ANDROID_PLATFORM_TOOL="/Users/ofortin/android-sdk-macosx/plateform-tools"                                                                                                                                
export PATH=$ANDROID_HOME:$ANDROID_TOOL:$ANDROID_PLATFORM_TOOL:$PATH
