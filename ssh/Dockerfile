FROM alpine:latest

LABEL "maintainer"="Paul Thrasher <thrashr888@gmail.com>"
LABEL "repository"="https://github.com/thrashr888/actions"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="SSH"
LABEL "com.github.actions.description"="Run command via SSH"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

RUN apk update && apk add --no-cache openssh-client bash

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
