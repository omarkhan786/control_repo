class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQOoC16kazl2xa99Dawvlq4iOFqNyfig+/HlLjKWiENlYo/aKj+lpqEN61sZ6+yxOh5QVzh6Huay7/Jru47uXjifulNpFqpCg9NccT8/tXQUrw6gsoeFHrBrKTlr8LFENf1EQMjHZY1p7ssXPclbsiWnMx/auNnAT4PeIq3M5YOGf8FyzWAGf4vJY8SDBaQTZN4pugyP8kJqbzBMb2/iDa5sdCjoiiD8OW5/kIh/MpsuEG9XSW3NIzMRM6ab6ywKaP9AMqsI43yBm2wgIFSmMkzvtPmamMJxWpHkmKOIMINEtPxxlTLB71qKYaowQOo5DXfEhzSzzvPU7jCxr8M743',
  }  
}
