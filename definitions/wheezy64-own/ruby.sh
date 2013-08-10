groupadd -r rbenv
gpasswd -a deploy rbenv

echo << 'EOF' > /etc/profile.d/rbenv.sh
export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"

eval "$(rbenv init -)"
EOF

chmod +x /etc/profile.d/rbenv.sh

export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/shims:$RBENV_ROOT/bin:$PATH"

curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash

git clone https://github.com/joefiorini/rbenv-prompt.git $RBENV_ROOT/plugins/rbenv-prompt
git clone https://github.com/jamis/rbenv-gemset.git $RBENV_ROOT/plugins/rbenv-gemset

MAKE_OPTS="-j 4" rbenv install 2.0.0-p0
rbenv global 2.0.0-p0
rbenv rehash

gem update --system
rbenv rehash

gem install bundler --no-ri --no-rdoc
rbenv rehash

chown -R root:rbenv $RBENV_ROOT
chmod -R 775 $RBENV_ROOT
