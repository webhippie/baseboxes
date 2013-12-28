if [ -f /home/vagrant/.veewee_params ]; then
  source /home/vagrant/.veewee_params
fi

if [ -z "$CHEF_VERSION" ]; then
  curl -L http://opscode.com/chef/install.sh | sudo bash -s
else
  curl -L http://opscode.com/chef/install.sh | sudo bash -s -- -v $CHEF_VERSION
fi
