# Include external bash configuration

# Load Defaults
LOCAL_DEFAULTS_FILE_PATH=$HOME/.bash-config/.defaults
if test -f ${LOCAL_DEFAULTS_FILE_PATH}.template
then
	. ${LOCAL_DEFAULTS_FILE_PATH}.template
fi

## Override with user defaults if they exist
if test -f $LOCAL_DEFAULTS_FILE_PATH
then
	. $LOCAL_DEFAULTS_FILE_PATH
fi

debug-log() {
    if [ "$ENABLE_DEBUG_LOGGING" = true ]; then
        echo $@
    fi
}
debug-log ""
debug-log "Initialize Bash Environment"

# Git Autocompletion
. $HOME/.git-completion.bash

# Git Aliases
debug-log ""
debug-log "Load Bash Aliases:"
debug-log "‎ -> .alias-config from (${HOME}/.bash-config/.alias-config)"
. $HOME/.bash-config/.alias-config

LOCAL_ALIAS_CONFIG_FILE_PATH=$HOME/.bash-config/.local-alias-config
if [ -f $LOCAL_ALIAS_CONFIG_FILE_PATH ]; then
    debug-log "‎ -> .local-alias-config from (${LOCAL_ALIAS_CONFIG_FILE_PATH})"
    . ${LOCAL_ALIAS_CONFIG_FILE_PATH}
fi

# SSH Configuration
debug-log ""
if [ "$ENABLE_SSH_AGENT_SPAWNING" = true ]; then
    . $HOME/.bash-config/.ssh-config
fi

# Load custom configuration extensions
debug-log ""
. $HOME/.bash-config/.config-extensions

# JMX Port Problems Fix
export CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=19315"

# Make sure new commands are added to the history
PROMPT_COMMAND='history -n'


debug-log ""
debug-log ""
debug-log "!!! Logging is Enabled < Edit your .defaults file to disable !!!"