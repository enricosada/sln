msbuild sources are managed as git subtree, from https://github.com/Microsoft/ repo

```
# add as remote, track master branch only, no tags
git remote add -t master --no-tags Microsoft/msbuild https://github.com/Microsoft/msbuild.git

# fetch remote, just last 10 commmits
git fetch Microsoft/msbuild master --depth 10

# subtree add to vendor/msbuild
git subtree add --prefix vendor/msbuild Microsoft/msbuild master --squash

```

