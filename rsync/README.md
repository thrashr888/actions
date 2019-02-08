# SSH Action

> $ export SSH_KEY=`cat ~/.ssh/id_rsa`
> $ export SSH_PUBLIC_KEY=`cat ~/.ssh/id_rsa.pub`
> $ export HOST=www.example.com
> $ docker build -t rsync .
> $ docker run -e SSH_KEY -e SSH_PUBLIC_KEY -e HOST -it rsync
