# Save this file as "application.profile" (change "application" with the
# program name) in ~/.config/firejail directory. Firejail will find it
# automatically every time you sandbox your application.
#
# Run "firejail application" to test it. In the file there are
# some other commands you can try. Enable them by removing the "#".

# Firejail profile for qutebrowser
# Persistent local customizations
#include qutebrowser.local
# Persistent global definitions
#include globals.local

noblacklist ${HOME}/.cache/qutebrowser
noblacklist ${HOME}/.config/qutebrowser
noblacklist ${HOME}/.local/share/qutebrowser
noblacklist ${RUNUSER}/qutebrowser
noblacklist ${HOME}/Pictures

include allow-bin-sh.inc

include allow-python2.inc
include allow-python3.inc

ignore noexec ${HOME}

### Basic Blacklisting ###
### Enable as many of them as you can! A very important one is
### "disable-exec.inc". This will make among other things your home
### and /tmp directories non-executable.
include disable-common.inc      # dangerous directories like ~/.ssh and ~/.gnupg
include disable-devel.inc      # development tools such as gcc and gdb
#include disable-exec.inc       # non-executable directories such as /var, /tmp, and /home
#include disable-interpreters.inc       # perl, python, lua etc.
include disable-programs.inc    # user configuration for programs such as firefox, vlc etc.
#include disable-shell.inc      # sh, bash, zsh etc.
#include disable-xdg.inc        # standard user directories: Documents, Pictures, Videos, Music

### Home Directory Whitelisting ###
### If something goes wrong, this section is the first one to comment out.
### Instead, you'll have to relay on the basic blacklisting above.
mkdir ${HOME}/.cache/qutebrowser
mkdir ${HOME}/.config/qutebrowser
mkdir ${HOME}/.local/share/qutebrowser
mkdir ${RUNUSER}/qutebrowser
whitelist ${HOME}/.Xdefaults-basedgentoo
whitelist ${HOME}/Downloads
whitelist ${HOME}/Pictures
whitelist ${HOME}/.Xresources
whitelist ${HOME}/.local/share/qutebrowser
whitelist ${HOME}/.config/qutebrowser
whitelist ${HOME}/.config/readline
whitelist ${HOME}/.cache/qutebrowser
whitelist ${HOME}/.local/src/qutebrowser/qutebrowser
whitelist ${HOME}/.local/src/qutebrowser/qutebrowser/__pycache__
whitelist ${HOME}/.local/src/qutebrowser/.venv
whitelist ${HOME}/.local/bin/qutebrowser

### Filesystem Whitelisting ###
whitelist ${RUNUSER}/qutebrowser
whitelist ${RUNUSER}/qutebrowser/ipc-8e15625d6c158ec48f374efb77bd2714
include whitelist-common.inc
include whitelist-run-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

read-write ${HOME}/.config/qutebrowser
read-write ${HOME}/.cache/qutebrowser
#apparmor       # if you have AppArmor running, try this one!
caps.drop all
netfilter
nodvd  # disable DVD and CD devices
nogroups       # disable supplementary user groups
nonewprivs
noroot
notv   # disable DVB TV devices
protocol unix,inet,inet6,netlink
#ipc-namespace
#no3d   # disable 3D acceleration
#noinput        # disable input devices
#notpm  # disable TPM devices
#nou2f  # disable U2F devices
#novideo        # disable video capture devices
#net none
seccomp !chroot,!name_to_handle_at # allowing chroot, just in case this is an Electron app
#tracelog       # send blacklist violations to syslog

disable-mnt    # no access to /mnt, /media, /run/mount and /run/media
private-bin dash,python3
private-cache  # run with an empty ~/.cache directory
private-dev
private-etc @tls-ca
#private-lib
private-tmp
# File accessed in /tmp directory:
# /tmp/dbus-fD8QGT8AHQ,

dbus-user filter

dbus-user.own org.mpris.MediaPlayer2.chromium.*
dbus-user.own org.mpris.MediaPlayer2.qutebrowser.*
dbus-user.talk org.freedesktop.Notifications

dbus-system none

#memory-deny-write-execute
