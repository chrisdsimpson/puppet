# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default (basenode) node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node basenode {
   
}

node 'puppetagent.acres4.net' inherits basenode {
  include mysite2 
  include timezone::pacific
  include hosts::puppetagent 
}

node 'puppetgaent1.acres4.net' inherits basenode {
   
}

node 'puppetagent2.acres4.net' inherits basenode {
  include mysite
  include timezone::mountain
  include hosts::puppetagent2
}

node 'puppetagent3.acres4.net' inherits basenode {
  
}

node 'puppetagent4.acres4.net' inherits basenode {
  
}

node 'puppetagent5.acres4.net' inherits basenode {
  
}