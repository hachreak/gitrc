gitrc
=====

Personal git configurations.

You can found general settings in `bundle/config/plugin/config.vim`
and plugins settings in `bundle/config/plugin` directory.


Install
-------

Clone this repo:

```bash
  laptop> git clone https://github.com/hachreak/gitrc.git
  laptop> cd gitrc
  laptop> ./deploy.sh
```

The script backup your .gitconfig file and then install the
configuration in your environment.


Shortcuts
---------
* **ga** - git add .
* **gb** - git branch
* **gbm [branch]** - lists branches already merged into [branch] (default: the active branch). Useful to find which branch can be deleted because merged. If you don't specify the branch, as default it takes the current one.
* **gbnm [branch]** - lists branches not merged into [branch]. If you don't specify the branch, as default it takes the current one.
* **gbr** or **git_branch_remove** - Remove a specific branch (only if already merged in current branch). To automatically remove also the tracked branch, add `-r` at the end. **Tipical usage**: `gbr fuu_branch -r`).
* **gbs** or **git-branches-status** - show list of branches that are ahead or behind of the tracked branch and of how many commits.
* **gccb** - git checkout -b
* **gcck** - git checkout
* **gcoa** - git commit -a -s
* **gcoaa** - git commit -a -s --amend
* **gcoaane** - git commit -a -s --amend --no-edit
* **gcoane** - git commit -a -s --no-edit
* **gdhh** - git diff HEAD^ HEAD
* **gfa** - git fetch --all
* **gfmr** or **git_repos_find_mine** [username] - find all repositories associated with the user `username` (checking the remote `origin`). Note: you can also specify with remote repository check (e.g. `gfmr myuser upstream`).
* **git co** - git checkout
* **git f** - git fetch
* **git ff origin/master** - git fast-forwarding
* **git k** - see nice version of git log
* **git_repo_is_mine [username]** - Check if the repository is mine
* **git_repo_sync_local_branch [branch_name] [upstream_repo] [origin_repo]** - sync local `branch_name` to upstream `branch_name` and push changes also to origin repository. As default: branch_name is `master`, upstream_repo is `upstream` and origin_repo is `origin`. [*WARNING*] if wrongly used, can destroy your repository history. See docs in code.
* **git_repos_find_mine [username]** - find which repository inside the current directory are owned by `username`.
* **git_repos_find_merged_branch** - Find branches that are already merged. **Tipical usage**: `git_repos_find_merged_branch $(git_repos_find_mine myusername)`
* **git_repos_sync_local_master** - Sync all local master brances with the remote ones. You need to pass the list of branches (you can also use `git_repos_find_mine myuser` to automatically generate the list of repositories). **Tipical usage**: `git_repos_sync_local_master $(git_repos_find_mine myusername)`
* **git_resolve_conflicts_delete** - Resolve conflict on deleted files on master branch
* **gk** or **git ka** - see nice version of git log for all branches
* **gp** - git push -f
* **gpo** - git push -f origin
* **gs** - git status
* **gt** or **git_track** [remote] [remote_branch] - set remote tracked branch (without arguments, it set as tracked branch from origin with the same name of active branch)

Tools
-----

#### erlang_bump_version

This utility is useful in case your `erlang` module follow the
[Semantic Versioning 2.0](http://semver.org/).

It's able to automatically extract the current version and increment the
appropriate number.

At this moment it support only the `vsn` in the `.app.src` file.
To apply also the version upgrade to the release, set the `rebar.config` as:

```
...
{relx, [
  {release,
    {'mymodule', "vsn"},
    [
      ...
    ]
  }
]}
```

`erlang_bump_version -[g|m|r|s|t|h] [major|minor|patch]`

Parameter (REQUIRED):
 - **major** Create a new major release.
 - **minor** Create a minor release.
 - **patch** Create a patch release.

Options:
 - **-g** (create a commit)
 - **-h** (print help)
 - **-m** (specify a message for the tag, note: use "quote")
 - **-r** (push to origin)
 - **-s** (sign the tag)
 - **-t** (tag last commit)

**Usage example**

```bash
cd /path/to/my/project
erlang_bump_version -g -t -m "- Feature1\n- Feature 2" -r major
```

The utility will:
 - upgrade the major release to e.g. 2.0.0
 - git commit the changes
 - create a tag associate with a defined message.
 - push the commit and the tag or `origin`

The tag message has the form of:

```
Version x.x.x

- Feature1
- Feature2
```

Note: your module should already follow the `semver` in the moment you run
the utility.

**If it's your first time your run the script, set manually the erlang `vsn`
version to a initial value like 0.0.0**
