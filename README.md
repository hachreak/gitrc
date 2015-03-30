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
* **gs** - git status
* **gb** - git branch
* **gc** - git checkout
* **gk** - **git ka** - see nice version of git log
* **ga** - git add .
* **git ff origin/master** - git fast-forwarding
* **gbs** or **git-branches-status** - show list of branches that are ahead or behind of the tracked branch and of how many commits.
* **gbm [branch]** - lists branches merged into [branch]
* **gbnm [branch]** - lists branches not merged into [branch]

