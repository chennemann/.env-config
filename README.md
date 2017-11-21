# .env-config
Configuration for many aspects of development (Gradle, Vim, Git)


To use this configuration clone this repository into your home directory with:
```
git clone https://github.com/chennemann/.env-config.git
```

- - - -

## .bash-config

The purpose of this configuration is to organize .bashrc scripts in multiple files to keep it organized.
If you use git bash to manage your repositories you will now have a long list of available shortcuts you can use to fasten up your workflow. See below for a reference for all available shortcuts:

### Aliases

Since git aliases always require the 'git' prefix I decided to use bash aliases to workaround this requirement.
With aliases defined in .bashrc you can ommit the prefix and speed up your workflow. (A little...)
Another "feature" build into those aliases is the tolerance for typos.

#### 'git clone [url]' - Clones the repository from the specified url
```
 - cl
 - clone
```

#### 'git status' - Checks the status of the working directory
```
 - ss
```

#### 'git fetch && git status' - Fetches changes from origin and compares them to the working directory
_This shortcut is very useful to compare the local repository with the latest changes in the remote repository_
```
 - s
 - stat
 - stats
 - statsu
 - status
```

#### 'git pull' - Fetches changes from origin and tries to merge them
```
 - p
 - pll
 - pull
```

#### 'git push' - Push local commits to origin
```
 - psh
 - push
```

#### 'git push -u origin [name]' - Push local commits to new branch
```
 - po
 - psho
 - pshorig
 - pusho
 - pushorig
 - pushorigin
```
#### 'git branch [name]' - List all available branches or creates a new one with the given name
```
 - b
 - branch
 - lbranch
```

#### 'git branch -m ([old name]) [new name]' - Renames the specified (or the currently checked out) branch
```
 - rb
 - rename
 - renameb
 - renamebranch
 - rename_branch
```

#### 'git branch -d [name]' - Deletes a branch
```
 - db
 - deleteb
```

#### 'git checkout -b [name]' - Create a new branch and switch to it
```
 - cb
 - createb
 - createbranch
```

#### 'git checkout [file|branch]' - Checkout a file or branch
```
 - co
 - checkout
```

#### 'git add [file]' - Track specific file
```
 - a
 - add
```

#### 'git add .' - Track all untracked files
```
 - aa
 - aall
 - adda
 - addall
 - add_all
```

#### 'git commit' - Make a new commit
```
 - c
 - comit
 - commit
```

#### 'git commit -m' - Make a new commit and specify the commit-message inline
```
 - cm
```

#### 'git add . && git commit' Add all untracked files and make a new commit
```
 - ac
```

#### 'git add . && git commit -m' Add all untracked files and make a new commit and specify the commit-message inline
```
 - acm
```

#### 'git log' - Displays the commit log
```
 - dl           //  Display Log
 - sl           //  Show Log
 - l      
 - log
```

#### 'git merge [branch]' - Merges the specified branch into the current branch
```
 - m
 - merge
```

#### 'git rebase [branch]' - Rebase the current branch to the tip of the specified branch
```
 - rebase
```

#### 'git update-index --assume-unchanged [file]'
_This command is useful if you don't want to add your changes to the repository yet_
```
 - ig
 - ignore
```

#### 'git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done' - Remove all non-remote branches
_This command is useful for cleaning up a repository with lots of local branches that are no longer in use._

```
 - rmg
 - rmgone
 - removegone
 - remove-gone
```

#### 'adb kill-server && adb start-server' - Restarts the adb server
```
 - ar
```

#### 'adb connect [ip]' - Connect to your Android device via Wireless ADB
```
 - adbc
```

#### 'exit' - Closes the current Terminal
```
 - e
 - ex
 - exti
 - exit
 - eixt
 - eitx
```

- - - -
