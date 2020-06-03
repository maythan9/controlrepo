#manifests-init.pp should always contain a class with the same name
#as the module itself.

class minecraft {
	file {'/opt/minecraft':
		ensure => directory,
	}

	file {'/opt/minecraft/server.jar':
		ensure => file,
		source => https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar'
	}

	package {'java':
		ensure => present,
	}

	file {'/opt/minecraft/eula.txt':
		ensure  => file,
		content => 'eula=true',
	}

	file {/'etc/systemd/system/minecraft.service':
		ensure  => file,
		source  => 'puppet:///modules/minecraft/minecraft.service',
                #source of Unit file which is created in github.
	}

	sertice {'minecraft':
		ensure => running,
		enable => true,
	}

}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
