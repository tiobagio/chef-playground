#!/bin/bash

# run chef-zero
#chef-zero --port 9501 &

# create nodes
knife upload nodes
knife node list

# create data_bag users
knife data_bag create users
knife data_bag from file users alice.json
knife data_bag from file users bob.json

knife data_bag show users

# create roles
knife role from file webserver.json
knife node run_list set snowman "role[webserver]"
knife node run_list set snowman "role[webserver]"
knife role show webserver
knife node show snowman

#create environments
knife environment from file dev.json
knife environment from file production.json
knife environment show dev
knife environment show production
