if [ -f /home/vagrant/.veewee_params ]; then
  source /home/vagrant/.veewee_params
fi

if [ -z "$CHEF_VERSION" ]; then
  wget -O - http://opscode.com/chef/install.sh | sudo bash -s
else
  wget -O - http://opscode.com/chef/install.sh | sudo bash -s -- -v $CHEF_VERSION
fi
