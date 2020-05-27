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
		type   => 'ssh-ed25519',
		key    =>'AAAAC3NzaC1lZDI1NTE5AAAAIIgDxLlshf+f4PE3itlr7/rAPxmVhPaYlsdifl4BIrtD',
	}
}
