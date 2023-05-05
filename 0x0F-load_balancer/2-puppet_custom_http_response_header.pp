# Create a custom HTTP header response with puppet

package { 'nginx':
  ensure => installed,
}

class { 'nginx::config::resource':
  content => "add_header X-Served-By ${::hostname};",
  target  => '/etc/nginx/conf.d/custom_header.conf',
}

file { '/etc/nginx/nginx.conf':
  ensure  => file,
  content => 'add_header X-Served-By $hostname;',
}

service { 'nginx':
  ensure    => running,
}
