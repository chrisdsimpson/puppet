class mysite {
  file { '/home/www/mysite.acres4.net':
         ensure => directory,
  }

  file { '/home/www':
         ensure => directory,
  }
}

file { '/tmp/test1':
  ensure => file,
  content => "Hi.",
}

file { '/tmp/test2':
  ensure => directory,
  mode => 0644,
}

file { '/tmp/test3':
  ensure => link,
  target => '/tmp/test1',
}
