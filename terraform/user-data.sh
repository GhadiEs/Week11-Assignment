#!/bin/bash
apt update -y
apt install -y git curl unzip tar gcc g++ make awscli

# NVM + Node.js + PM2
su - ubuntu -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash'
su - ubuntu -c '
  export NVM_DIR="$HOME/.nvm"
  source "$NVM_DIR/nvm.sh"
  nvm install --lts
  nvm alias default node
  npm install -g pm2
  pm2 startup
'
