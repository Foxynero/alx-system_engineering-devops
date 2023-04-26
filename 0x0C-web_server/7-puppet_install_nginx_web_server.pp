# install and configure an Nginx server using Puppet instead of Bash

package { 'nginx':
  ensure => installed,
  name   => 'nginx'
}
file { 'path_to_html':
  content => 'Hello World',
  path    => '/var/www/html/index.nginx-debian.html'
}
file_line { 'put_in_line':
  ensure => present,
  path   => 'etc/nginx/sites-available/default',
  after  => '/listen 80 default_server;'
  line   => 'rewrite ^/redirect_me HTTP/1.1 301 Moved Permanently;'
}
service { 'nginx':
  ensure  => running,
  require => Package['nginx']
}
