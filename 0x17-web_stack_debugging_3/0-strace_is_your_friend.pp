file { '/var/www/html/wp-includes/class-wp-locale.php':
  ensure => file,
  source => '/var/www/html/wp-includes/class-wp-locale.php',
}

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/',
  onlyif  => '/usr/bin/test -f /var/www/html/wp-settings.php',
}

