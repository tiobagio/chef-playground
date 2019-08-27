#
# Cookbook:: hello
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file '/tmp/foo' do
    content "hello - #{node['message']}"
end
