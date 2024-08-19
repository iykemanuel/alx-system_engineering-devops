# Ensure the directory exists
file { '/var/www/html/wp-includes':
  ensure => directory,
}

# Ensure the file exists with the correct source path
file { '/var/www/html/wp-includes/class-wp-locale.php':
  ensure => file,
  source => '/var/www/html/wp-includes/class-wp-locale.php',
}

# Exec resource to fix WordPress
exec { 'fix-wordpress':
  command => '/bin/true',
  onlyif  => '/usr/bin/test -f /var/www/html/wp-includes/class-wp-locale.php',
  path    => ['/usr/bin', '/bin'],
}

