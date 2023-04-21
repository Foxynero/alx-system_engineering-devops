#process has been terminated
exec {'killmenow':
command  => 'pkill "killmenow"',
provider => 'shell',
}
