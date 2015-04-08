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
* **gbm [branch]** - lists branches merged into [branch]
* **gbnm [branch]** - lists branches not merged into [branch]
* **gbs** or **git-branches-status** - show list of branches that are ahead or behind of the tracked branch and of how many commits.
* **gcck** - git checkout
* **gccb** - git checkout -b
* **gcoa** - git commit -a -s
* **gcoaa** - git commit -a -s --amend
* **git k** - see nice version of git log
* **gk** or **git ka** - see nice version of git log for all branches
* **git ff origin/master** - git fast-forwarding
* **gs** - git status
