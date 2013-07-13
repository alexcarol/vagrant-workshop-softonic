# paths to executable files in the virtual machine
Exec { path => ["/bin/", "/sbin/", "/usr/bin/", "/usr/sbin/"] }

# make sure user group puppet exists
group { 'puppet':
  ensure => present,
}

import "system.pp"
import "web.pp"

include system-update

class {"web": }