# Create a custom HTTP header response with puppet

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/conf.d/custom-header.conf':
  ensure  => file,
  content => "add_header X-Served-By $hostname;",
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/conf.d/custom-header.conf'],
}
