package 'httpd' do 
end

service 'httpd' do 
	action [:enable, :start]
end

file '/var/www/html/index.html' do
	content 'Hello World V1.0'
	mode '0755'
	user 'root'
	group 'apache'
end

package 'tree' do
end

file '/etc/motd' do
	content 'welcome to CHEF WORKSTATION'
end

execute 'command-test' do
	command 'echo blah >> /etc/motd'
	only_if 'test -r /etc/motd'
end
