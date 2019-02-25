# has-changes Action

A GitHub Actions filter using git diff. Stops the Actions if there were changes in a given folder.

```
action "has changes" {
  uses = "thrashr888/actions/has-changes@master"
  args = ["terraform"]
}
```
