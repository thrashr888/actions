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
    "SSH_KEY",
    "PUBLIC_KEY",
  ]
  args = [
    "$GITHUB_WORKSPACE/index.html",
    "alice@example.com:path/to/destination"
  ]
}
````
