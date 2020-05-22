node default {

}

node 'master.puppet.vm' {
	include role::master_server
	file {'/root/love':
		ensure  => file,
		content => 'hello',
		}
}

node /^web/ {
	include role::app_server
	file {'/root/hello':
		ensure  => file,
		content => "this is anothere test\n",
		}
}

node /^db/ {
	include role::db_server
}

