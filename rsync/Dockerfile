FROM alpine:latest

LABEL "maintainer"="Paul Thrasher <thrashr888@gmail.com>"
LABEL "repository"="https://github.com/thrashr888/actions"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="Rsync"
LABEL "com.github.actions.description"="Copy files via rsync"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="orange"

RUN apk update && apk add --no-cache openssh-client bash rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
