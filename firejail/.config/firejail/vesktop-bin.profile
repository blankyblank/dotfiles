# Firejail profile for vesktop
# This file is overwritten after every install/update
# Persistent local customizations
include discord.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/vesktop
noblacklist ${HOME}/Pictures

mkdir ${HOME}/.config/vesktop
whitelist ${HOME}/.config/vesktop
whitelist /opt/vesktop-bin
whitelist /opt/discord
whitelist ${HOME}/Pictures
#whitelist /usr/share/discord

private-bin vesktop-bin

# Redirect
include vesktop-common.profile
