# Automating my work using Puppet

package { 'nginx':
	ensure => installed,
}

file_line { 'install':
	ensure => 'present',
	path => '/etc/nginx/sites-enabled/default',
	after => 'listen 80 default_server;',
	line => 'rewrite ^/redirect_me https://www.github.com/b-kwizera permanent;',
}

file { '/var/www/html/index.html':
	content => 'Holberton School',
}

service [ 'nginx':
	ensure => running,
	require => Package['nginx'],
}
