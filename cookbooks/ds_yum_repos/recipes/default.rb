#
# Cookbook:: ds_yum_repos
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository 'CentOS-Base' do
	action :delete
end 

yum_repository 'CentOS-Base' do
        action :delete
end

yum_repository 'CentOS-Debuginfo' do
        action :delete
end
yum_repository 'CentOS-Media' do
        action :delete
end

yum_repository 'Centos-Vault' do
        action :delete
end

case node['platform_version']
when '5.11', '5.1'     
        yum_repository 'DS_Sec_Ops_6.5_Repo' do 
               description 'DS Sec Ops 6.5 Repo'
               baseurl 'https://192.168.19.153/6.5'
               gpgkey 'https://192.168.19.153/6.5/RPM-GPG-KEY-CentOS-6'
               action :create
        end
when '6.5'
        yum_repository 'DS_Sec_Ops_6.5_Repo' do
               description 'DS Sec Ops 6.5 Repo'
               baseurl 'http://192.168.19.153/6.5'
               gpgkey 'http://192.168.19.153/6.5/RPM-GPG-KEY-CentOS-6'
	       sslverify false
               action :create
        end
end

