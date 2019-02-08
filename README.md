# GitHub Actions

A collection of GitHub actions.

## SSH

````
action "Run deploy script" {
  uses = "thrashr888/actions/ssh@master"
  secrets = [
    "SSH_KEY",
    "PUBLIC_KEY",
    "HOST",
    "USER"
  ]
  args = "/opt/deploy/run"
}
````


## Rsync


````
action "Deploy with rsync" {
  uses = "thrashr888/actions/rsync@master"
  secrets = [
    "HOST",
    "SSH_KEY",
    "PUBLIC_KEY",
  ]
  args = [
    "$GITHUB_WORKSPACE/index.html",
    "alice@example.com:path/to/destination"
  ]
}
````


## tfe-cli


````
action "List TFE Workspaces" {
  uses = "thrashr888/actions/tfe-cli@master"
  secrets = [
    "TFE_TOKEN",
  ]
  env = {
    TFE_ORG = "my-org"
  }
  args = ["workspace list"]
}
````
