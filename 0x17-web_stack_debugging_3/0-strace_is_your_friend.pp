file { '/var/www/html/wp-includes/class-wp-locale.php':
  ensure => file,
  source => '/var/www/html/wp-includes/class-wp-locale.phpp',
}

exec { 'fix-wordpress':
  command => 'mv /var/www/html/wp-includes/class-wp-locale.phpp /var/www/html/wp-includes/class-wp-locale.php',
  onlyif  => 'test -f /var/www/html/wp-includes/class-wp-locale.phpp',
}

