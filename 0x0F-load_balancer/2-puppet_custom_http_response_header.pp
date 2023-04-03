# Custom HTTP header in a nginx server

# update ubuntu server
exec {'update':
  command => '/usr/bin/apt-get update',
}
# install nginx web server on server
-> package {'nginx':
  ensure => 'present',
}
# custom Nginx response header (X-Served-By: hostname)
-> file_line { 'http_header':
  path  => '/etc/nginx/nginx.conf',
  match => 'http {',
  line  => "http {\n\tadd_header X-Served-By \"${hostname}\";",
}
# start service
-> exec {'run':
  command => '/usr/sbin/service nginx restart',
}
