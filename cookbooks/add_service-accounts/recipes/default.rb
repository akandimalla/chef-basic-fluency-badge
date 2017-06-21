#
# Cookbook:: add_service-accounts
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

script 'add_service-accounts' do
	interpreter 'bash'
	user 'root'
	cwd '/root'
	code <<-EOH
	mkdir -p /opt/home
	getent group monitoring > /dev/null || /usr/sbin/groupadd -r monitoring
	getnet passwd monitoring > /dev/null || /usr/sbin/useradd -r -g monitoring monitoring -c 'Monitoring User' -s /bin/bash -d /opt/home/monitoring -p mk4YSfa2kss7g -m 
	EOH
end 
