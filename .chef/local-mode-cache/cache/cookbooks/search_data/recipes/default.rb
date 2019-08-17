#
# Cookbook:: search_nodes
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
#
search(:profiles, "country:id",
     :filter_result => {'phase' => [ 'phase' ],
                        'name' => [ 'id' ], 
                        'version' => [ 'sec_os_rhel_7'] }
      ).each do |result|
    puts result['name']
    puts result['phase']
    puts result['version']
end
