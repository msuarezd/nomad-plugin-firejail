
include globals.local

caps.drop all
ipc-namespace
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
protocol unix,inet,inet6
seccomp
shell none
tracelog

private
private-cache
private-dev
private-tmp 
private-etc resolv.conf
private-bin /bin/nc.traditional,/bin/bash,/bin/ls,/bin/ps,/usr/bin/whoami,/usr/bin/id


memory-deny-write-execute
noexec ${HOME}
noexec /tmp
writable-run-user
