node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme file. This line is written and commit from local machine',
    owner   => 'root',
  }
}
