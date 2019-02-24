#!/bin/sh

set -e

SSH_PATH="$HOME/.ssh"

echo "==> copying keys"

mkdir -p "$SSH_PATH"
touch "$SSH_PATH/known_hosts"

echo "$SSH_KEY" > "$SSH_PATH/deploy_key"
echo "$SSH_PUBLIC_KEY" > "$SSH_PATH/deploy_key.pub"

chmod 700 "$SSH_PATH"
chmod 600 "$SSH_PATH/known_hosts"
chmod 600 "$SSH_PATH/deploy_key"
chmod 600 "$SSH_PATH/deploy_key.pub"

echo "==> ssh-agent"
eval $(ssh-agent)

echo "==> ssh-add \"$SSH_PATH/deploy_key\""
ssh-add "$SSH_PATH/deploy_key"

echo "==> ssh-keyscan -t rsa $HOST >> \"$SSH_PATH/known_hosts\""
ssh-keyscan -t rsa $HOST >> "$SSH_PATH/known_hosts"

echo "==> ssh -A -tt -o 'StrictHostKeyChecking=no' -p ${PORT:-22} $USER@$HOST \"$*\""
ssh -A -tt -o 'StrictHostKeyChecking=no' -p ${PORT:-22} $USER@$HOST "$*"
