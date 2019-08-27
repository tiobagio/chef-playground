# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :debug
log_location             STDOUT
node_name                "devhost"

client_key               "#{current_dir}/devhost.pem"

#chef_server_url          "https://chef-server.test/organizations/sa"
chef_server_url "http://127.0.0.1:9501"

cookbook_path            ["#{current_dir}/../cookbooks"]
cache_type              "BasicFile"
cache_options           :path => "#{current_dir}/checksums"

#cookbook_path            ["#{chef_repo}/cookbooks"]
#cache_type              "BasicFile"
#cache_options           :path => "#{chef_repo}/checksums"
