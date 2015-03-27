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
* **gbs** or **git-branches-status** - show list of branches that are ahead or behind of the tracked branch and display how many commits.
* **gfa** or **git-find-ancestor-branch** - show info about ancestor branches. Useful if you need to know ancestor branch and if your branch needs rebasing displaying how much commits differ from them.
