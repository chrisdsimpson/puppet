class hosts::puppetagent {
  host { 'puppetagent.acres4.net':
         ip => '10.3.2.173',
         host_aliases => 'puppetagent',
  }

  file { 'HOSTNAME':
         path => '/etc/HOSTNAME',
         ensure => present,
         mode => 0640,
         content => "puppetagent.acres4.net",
  }    
}

class hosts::puppetagent2 {
  host { 'puppetagent2.acres4.net':
         ip => '10.3.2.163',
         host_aliases => 'puppetagent2',
  }

  file { 'HOSTNAME':
         path => '/etc/HOSTNAME',
         ensure => present,
         mode => 0640,  
         content => "puppetagent2.acres4.net",
  }
}
