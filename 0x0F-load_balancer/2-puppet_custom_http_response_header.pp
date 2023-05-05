# Create a custom HTTP header response with puppet

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/conf.d/custom_header.conf'':
  content => "add_header X-Served-By $hostname;",
  target  => '/etc/nginx/conf.d/custom_header.conf',
}

service { 'nginx':
  ensure    => running,
}
