# Create a custom HTTP header response with puppet

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/conf.d/custom_header.conf':
  ensure => 'present',
  path   => '/etc/nginx/conf.d/custom_header.conf',
  content => "add_header X-Served-By $hostname;",
}

service { 'nginx':
  ensure => running,
  require => Package['nginx'],
}
