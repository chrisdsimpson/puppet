## Acres 4.0 Master puppet manifests file.
##
## site.pp ##

import 'modules'
import 'nodes'
import 'classes/*.pp'

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# PRIMARY FILEBUCKET
# This configures puppet agent and puppet inspect to back up file contents when
# they run. The Puppet Enterprise console needs this to display file contents
# and differences.

# Define filebucket 'main':
filebucket { 'main':
  server => 'puppetmaster.acres4.net',
  path   => false,
}

# Make filebucket 'main' the default backup location for all File resources:
File { backup => 'main' }
Exec { path => "/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin/:/bin:/sbin" }





