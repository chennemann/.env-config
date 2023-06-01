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

# Git Autocompletion
. $HOME/.git-completion.bash

# Git Aliases
. $HOME/.bash-config/.alias-config
LOCAL_ALIAS_CONFIG_FILE_PATH=$HOME/.bash-config/.local-alias-config
if [ -f $LOCAL_ALIAS_CONFIG_FILE_PATH ]; then
    . ${LOCAL_ALIAS_CONFIG_FILE_PATH}
fi

# SSH Configuration
if [ "$ENABLE_SSH_AGENT_SPAWNING" = true ]; then
    . $HOME/.bash-config/.ssh-config
fi

# Load custom configuration extensions
. $HOME/.bash-config/.config-extensions

# JMX Port Problems Fix
export CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=19315"

# Make sure new commands are added to the history
PROMPT_COMMAND='history -n'
