class timezone {
  package { "tzdata":
    ensure => installed
  }
}

class timezone::central inherits timezone {
  file { "/etc/localtime":
    require => Package["tzdata"],
    ensure => link,
    target => "file:///usr/share/zoneinfo/US/Central",
  }
}

class timezone::eastern inherits timezone {
  file { "/etc/localtime":
    require => Package["tzdata"],
    ensure => link,
    target => "file:///usr/share/zoneinfo/US/Eastern",
  }
}

class timezone::pacific inherits timezone { 
  file { "/etc/localtime":
    require => Package["tzdata"],
#    source => "file:///usr/share/zoneinfo/US/Pacific",
#    content => "US/Pacific\n",
    ensure => link, 
    target => '/usr/share/zoneinfo/America/Los_Angeles',          
  }
}

class timezone::mountain inherits timezone { 
  file { "/etc/localtime":
    require => Package["tzdata"],
#    source => "file:///usr/share/zoneinfo/US/Mountain",
#    content => "US/Mountain",
    ensure => link,  
    target => '/usr/share/zoneinfo/America/Denver',
  }
}
 
class timezone::arizona inherits timezone { 
  file { "/etc/localtime":
    require => Package["tzdata"],
#    source => "file:///usr/share/zoneinfo/US/Mountain",
#    content => "US/Mountain",
    ensure => link,  
    target => '/usr/share/zoneinfo/America/Phoenix',
  } 
}

class timezone::gmt inherits timezone {
  file { "/etc/localtime":
    require => Package["tzdata"],
    ensure => link,
    target => "file:///usr/share/zoneinfo/Europe/London",
  }
}
