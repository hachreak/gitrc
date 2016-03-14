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
-------------------------
* **ga** - git add .
* **gb** - git branch
* **gbm [branch]** - lists branches already merged into [branch] (default: the active branch). Useful to find which branch can be deleted because merged.
* **gbnm [branch]** - lists branches not merged into [branch]
* **gbr** or **git_branch_remove** - Remove a specific branch (only if already merged in current branch). To automatically remove also the tracked branch, add `-r` at the end (e.g. `gbr fuu_branch -r`).
* **gbs** or **git-branches-status** - show list of branches that are ahead or behind of the tracked branch and of how many commits.
* **gccb** - git checkout -b
* **gcck** - git checkout
* **gcoa** - git commit -a -s
* **gcoaa** - git commit -a -s --amend
* **gdhh** - git diff HEAD^ HEAD
* **gfa** - git fetch --all
* **git co** - git checkout
* **git f** - git fetch
* **git ff origin/master** - git fast-forwarding
* **git k** - see nice version of git log
* **git_find_my_repositories** - find all my repositories (checking the remote `origin`)
* **git_find_merged_branch_in_repositories** - Find branches that can be removed
* **git_resolve_conflicts_delete** - Resolve conflict on deleted files on master branch
* **gk** or **git ka** - see nice version of git log for all branches
* **gp** - git push -f
* **gpo** - git push -f origin
* **gs** - git status
* **gt** or **git_track** [remote] [remote_branch] - set remote tracked branch (without arguments, it set as tracked branch from origin with the same name of active branch)
