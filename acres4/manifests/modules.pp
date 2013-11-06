# Make sure all these packages are installed for the Acres 4.0 system.
#package { "jdk":  ensure => "installed" }
package { "jetty": ensure => "installed" }
#package { "MySQL-client": ensure => "installed" }
#package { "MySQL-server": ensure => "installed" }
#package { "MySQL-shared": ensure => "installed" }
package { "openssh-server":  ensure => "installed" }
package { "ntp":   ensure => "installed" }