class web {
  notify {
    "class_web":
    message => "class web"
  }

  $webPackages = ["nginx"]
  package {
    $webPackages:
      ensure => latest,
      require => Exec['apt-get update']
  }

  service {
    'nginx':
      ensure => running,
      require => Package['nginx'],
  }

  service {
    'mongodb':
      ensure => running,
    require => Package['mongodb-10gen'],
  }

  file {
    "/etc/nginx/nginx.conf":
      notify => Service["nginx"],
      mode => 664,
      owner => root,
      group => root,
      require => Package["nginx"],
      source => "/vagrant/vagrant_conf/puppet/etc/nginx/nginx.conf"
  }
}