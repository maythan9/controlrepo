node default {

}

node 'master.puppet.vm' {
	include role::master_server
	file {'/root/facter':
		ensure  => file,
		content => "Welcome to ${fqdn}\n",
		}
}

node 'minetest.puppet.vm' {
	include role::minecraft_server
}

node /^web/ {
	include role::app_server
	file {'/root/test':
		ensure => file,
		content => 'This is a test',
		}
}

node /^db/ {
	include role::db_server
}

node 'ratanak' {
	include role::test
}

