class mysite2{
  file { '/tmp/puppetagent.txt':
         ensure => file,
         content => "This is the puppet agent test file",
  }

}
