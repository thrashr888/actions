FROM alpine:latest

LABEL "maintainer"="Paul Thrasher <thrashr888@gmail.com>"
LABEL "repository"="https://github.com/thrashr888/actions"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="has-changes"
LABEL "com.github.actions.description"="Use git to check latest changes"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="gray"

RUN apk update && apk add --no-cache bash git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
