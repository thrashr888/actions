# tfe-cli Action

Use the tfe-cli:

    $ docker build -t tfe-cli .
    $ docker run -e TFE_ORG -e TFE_TOKEN -it tfe-cli workspace list
    $ docker run -e TFE_ORG -e TFE_TOKEN -it tfe-cli pushconfig -vcs false -name org_name/workspace_name


```
action "TFE: List Workspaces" {
  uses = "thrashr888/actions/tfe-cli@master"
  secrets = [
    "TFE_TOKEN",
  ]
  env = {
    TFE_ORG = "your-organization-name"
  }
  args = [
    "workspace",
    "list",
  ]
}
```
