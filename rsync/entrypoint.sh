#!/bin/sh

set -e

SSH_PATH="$HOME/.ssh"

mkdir "$SSH_PATH"
touch "$SSH_PATH/known_hosts"

echo "$SSH_KEY" > "$SSH_PATH/deploy_key"
echo "$SSH_PUBLIC_KEY" > "$SSH_PATH/deploy_key.pub"

chmod 700 "$SSH_PATH"
chmod 600 "$SSH_PATH/known_hosts"
chmod 600 "$SSH_PATH/deploy_key"
chmod 600 "$SSH_PATH/deploy_key.pub"

eval $(ssh-agent)
ssh-add "$SSH_PATH/deploy_key"

ssh-keyscan -t rsa $HOST >> "$SSH_PATH/known_hosts"

sh -c "rsync -r --delete-after --quiet -e 'ssh -o StrictHostKeyChecking=no' $*"
