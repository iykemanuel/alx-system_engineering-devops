file { '/var/www/html/wp-includes/class-wp-locale.php':
  ensure => file,
  source => '/var/www/html/wp-includes/class-wp-locale.phpp',
}

exec { 'fix-wordpress':
  command => '/bin/true',
  onlyif  => '/usr/bin/test -f /var/www/html/wp-includes/class-wp-locale.php',
}

