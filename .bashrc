# Include external bash configuration

# Git Autocompletion
. $HOME/.git-completion.bash

# Git Aliases
. $HOME/.bash-config/.alias-config

# SSH Configuration
. $HOME/.bash-config/.ssh-config

# JMX Port Problems Fix
export CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=19315"
