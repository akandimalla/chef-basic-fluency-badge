
file '/var/www/index.html' do
        action :delete

end 

file '/var/www/html/index.html' do 
        content 'This is apache web server-v.0.1.0'
        mode '0755'
        owner 'root'
        group 'apache'

end
