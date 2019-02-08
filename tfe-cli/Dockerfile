FROM alpine:latest

LABEL "maintainer"="Paul Thrasher <thrashr888@gmail.com>"
LABEL "repository"="https://github.com/thrashr888/actions"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="tfe-cli"
LABEL "com.github.actions.description"="Use the tfe-cli"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="purple"

RUN apk update && apk add --no-cache openssh-client bash curl jq wget

ENV TFE_CLI_VERSION=0.1.0

WORKDIR /src

ENV PATH /src/bin:$PATH

RUN wget https://github.com/hashicorp/tfe-cli/archive/v${TFE_CLI_VERSION}.zip
RUN unzip v${TFE_CLI_VERSION}.zip
RUN mv tfe-cli-${TFE_CLI_VERSION}/* .

ENTRYPOINT ["tfe"]
