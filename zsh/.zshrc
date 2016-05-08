 # Path to your oh-my-zsh installation.
export ZSH=/Users/Roy/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ardPower"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm.dd.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
## ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras git-flow git-prompt github brew brew-cask cp pip python sublime sudo supervisor tmux )



# ------------------X------------X------------X---------------- #




################################################################
# ******************* User configuration ********************* #
################################################################


###################################################
# Zsh fpath 
####################################################
fpath=(/usr/local/share/zsh-completions $fpath)



######################################################
# PATH settings for accessing binary files
#######################################################
export PATH="/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin::/Library/TeX/texbin"
# export MANPATH="/usr/local/man:$MANPATH"



##############################################
# Byobu Configuration 
##############################################
export BYOBU_PREFIX=$(brew --prefix)


##############################################
# source oh-my-zsh file
##############################################
source $ZSH/oh-my-zsh.sh


###########################################################
# Set Manual Locale (language) environment [Imortant]
###########################################################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
#
#



#########################################
# Compilation flags
########################################### 
# export ARCHFLAGS="-arch x86_64"
#
#



##############################################
# ssh config
###############################################
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#
#



#################################################
# *************** Alias Config **************** #
#################################################


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#




##############################################
# Source .zshrc file alias
##############################################
alias s= 'source'
alias sz= 'source ~/.zshrc'


##########################################################
# mount hard drive of ntfs format
############################################################
alias usb1='sudo mkdir /Volumes/usb1'
alias usb2='sudo mkdir /Volumes/usb2'
alias usb3='sudo mkdir /Volumes/usb3'

alias mount1='sudo mount -t ntfs-3g /dev/disk1s2 /Volumes/usb1'
alias mount2='sudo mount -t ntfs-3g /dev/disk2s2 /Volumes/usb2'

####### mount aliases ##########
alias m1='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk1s2 /Volumes/usb1/'
alias m2='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk2s2 /Volumes/usb2/'
alias m3='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk3s2 /Volumes/usb3/'

#######  unmout aliases ##########
alias um1='sudo umount /Volumes/usb1'
alias um2='sudo umount /Volumes/usb2'
alias um3='sudo umount /Volumes/usb3'

###### check drives available ###########
alias checkusb='ls /dev/ | grep disk'



####################################################
# git aliases
####################################################



##################
# git commands
##################
alias gs='git status' 
alias ga='git add'
# git add filename
alias gc='git commit'
# git commit -m 'commite msg'
alias gcm= 'git commit -m'
# git commit -m 'commite msg"
alias gcam= 'git commit -am'
# git commit -a -m 'commit msg' -> implicitly does git add * and then git commit -m 'commit msg'
alias grm='git rm'
# git rm [filename] -> untracks the filed and deletes from disk
alias grmc= 'git rm --cached'
# git rm --cached [filename] -> untracks the file but doesn't delete from disk
alias gmv='git mv'
# git mv filename
#
#



######################
# git log
######################
alias gl= 'git log'
alias glpo= 'git log --pretty=oneline'
alias glg= 'git log --graph'
alias glpfg= 'git log --pretty=format: "%h %s" --graph'



#########################
# git remote
##########################
alias gr= 'git remote'
# shows the remote branches
alias grv= 'git remote -v'
# show remote branches verbose
alias grs= 'git remote show'
# git remote show [remote-name]
# Eg : git remote show origin, git remote show upstream
alias grso= 'git remote show origin'
alias grr= 'git remote rename'
# git remote rename [remote-name] [new-remote-name]
# Eg : git remtoe rename origin super
# Eg : git remote rename pb paul
alias grrm= 'git remote rm'
# git remote rm [remote-name]
# git remote rm paul
alias grrmo= 'git remote rm origin'
alias gra= 'git remote add'
# git remote add [remote-name] [remote-url]
# eg : git remote add upstream https://github.com/samuel/sockjs.git
alias grao= 'git remote add origin'
# git remote add origin [remote-url]
#
#



######################################
# git fetch
#######################################
alias gf= 'git fetch'
# git fetch [remote-name]'
# git fetch origin
# git fetch team
alias gfo= 'git fetch origin'
# git fetch [remote-name]/[branch-name]
# git fetch team/serverfault
#
#



##################################
# git pull
####################################
alias gpu= 'git pull' 
# git pull [remote-name]
# eg: git pull team -> shorthand for git pull team/master
# eg: git pull origin -> shorthand for git pull origin/master
# git pull [remote-name]/[remote-branch]
# git pull team/server
alias gpuo= 'git pull origin'
alias gpuom= 'git pull origin/master'



##########################################
# git push
###########################################
alias gp= 'git push'
# git push [rmeote-name] [branch-name] -> pushes local branch-name to remote-brnachname, if not present remotely, will be created -> doesn't merget branh-cname to remote/master
alias gpo= 'git push origin'
#git push origin [branchname]
alias gpom= 'git push origin master'
# pushed local mster to remote master which are defaults
# git checkout -b [local-branchname] [remote-name]/[remote-branchname] -> git checkout -b serverfix origin/serverfix
#
#



#######################################################
# git track
########################################################
alias gtrk= 'git checkout --track'
# git checkout --track [remote-name]/[remote-branch] -> creates new local branch of same name and tracks the remote-branch
# git checkout -b [branch] [remote]/[branch] -> automatically creates local [branch] and  starts tracking, and is a shorthand for above command
# git clone remote-url -> automateically creates local master branch and strats tracking origin/master at remote
# another shorthnad, if [remote]/[branch9] exitst and locally when we do git checkout [branch9] , then it automatically creats a local [branch9] and starts tracking the remote [branch9]
#
#



#########################################################
# git delete remote branch
##########################################################
alias gdb= 'git push origin --delete'
# git push origin --delete [branchname] 
# more general : git push [remote-name] --delete [branchname]
#
#



############################################
# git tag
#############################################
alias gt= 'git tag'
# shows the available tags present
# also, git tag [tag-version-name] -> creats a new lightweight tag
alias gsh= 'git show'
# git show [tag-name]
alias gta= 'git tag -a'
# git tag -a [tag-name] -m "tag-msg"
# also, git tag -a [tag-name] [abbr commt hash] -> creates a tag of a previous committ
alias gpot= 'git push origin --tags'
# git push [remote-name] [tab-version-name]
# Also, git checkout -b [branch name] [tag-version-name] -> creates a branch [branchname] starting with head pointing to the [tag-version-name] commit
#
#



################################
# git branch
################################
alias gb= 'git branch'
# show branches, also used as git branch command prefix - git branch [branch-name] ->creats branch
alias gbd= 'git branch -d'
#git branch -d [branchname] -> deletess branchname
#



########################################################
# git checkout
#########################################################
alias gchk= 'git checkout'
# git checkout [branchname]
alias gchkm= 'git checkout master'
alias gchkb= 'git checkout -b'
# git checkout -b [new-brannchname] [source-branchname] -> shortcut to create branch and checkout with one command, default [source-branchname] is master, hence not used, othewise have to be used.
#
#



####################################################
# git merge
####################################################
alias gm= 'git merge'
# git merge [branchname] -> merges [branchname] with the current working branch
alias gmnoff= 'git merge --no-ff'
# git merge --no-ff [branchname] -> git merge without fast-forward to creat a separate merge commit 
alias gma= 'git merge --abort'
#tries to revert back to your state before you ran the merge. The only cases where it may not be able to do this perfectly would be if you had unstashed, uncommitted changes in your working directory when you ran it, otherwise it should work fine.
# git reset --hard HEAD -> it will return your repo to last commited state , all uncommitted changed will be lost 
#
#



###################################################
# git rebase
####################################################
alias grb= 'git rebase' 
# git rebase [branchname] -> rebase current working branch with [branchname]
# Also, git rebase [basebranch] [topicbranch]
alias grbm= 'git rebase master'
			


#########################################
# git stash
#########################################
alias gst= 'git stash'
# creats a new stash
alias gsts= 'git stash save'
# same as git stash
alias gstl= 'git stash list'
# show list of stashes
alias gsta= 'git statsh apply'
# repply the most recent stash in workin directoy of whichever curretn branch
alias gstas@= 'git stash apply stash@'
# git stash apply stash@{2}
alias gstai= 'git stash apply --index'
# to make the stages changes persist otherwise stages changes comes to unstaged
alias gstd= 'git stash drop'
# applying stash doesn't remove it form stack, so drop removes the latest stash from stack
alias gstds@= 'git stash drop stash@'
# git stash drop stash@{2}
alias gstp= 'git stash pop'
# alternatively you can pop the stsash from stack by above command one by one
alias gstki= 'git stash --keep-index'
# stashes the unstaged modified files, and doesn't stash the staged files
alias gstiu= 'git stash --include-untracked'
# by default git stashed only indexed files and not the untracked files, with the above command it will stash the untracked files too
alias gstb= 'git stash branch'
# git stash branch [branchname] -> creates a new [branchname] and applies last commit when stashing and then applies the stash on the new branch and pops the stash, original branch is clean.
alias gstc= 'git clean'
# removes stashed completely
#



##########################################
# Rewriting Commits / History
##########################################

# Why we need this and when
# Eg: 
# “Please rebase on top of master and we’ll merge your pull request”
#
# “Can you please squash your commits together so we get a clean, reversible git history?”.
#
# “Can you rewrite your commit’s message to describe better the problem it solves, and how it solves it?”.

###########  Reword last commit message ##########
alias grwlcm=  'git commit --amend' 
# It will open an editor with the last commit message, so you can modify it. After saving, a new commit will be created with the same changes and the new message, replacing the commit with the previous message.
# Also ->
# This can be useful to include files you forgot to track, or include modifications to the files you just commited. To do so, you can add the changes and then perform the amend:
# Eg: 
# git add README.md config/routes.rb
# git rm notes.txt
# git commit --amend

############  Reword other commit messages ##########
##### Interractive Rebase #####
alias grbi= 'git rebase -i'
# git rebase -i [branch/commit/HEAD~{pos}]
# eg: git rebase -i HEAD~4
# Let’s say I want to reword any of the last 4 commits of this blog.# It opens up editor and then we can reword/ squash/ pick/ edit etc to each commit individually

############ Rebase on top of master ############
# We fork an open source library, start working on a feature branch, and master in the upstream project moves ahead. Our history looks like:
#        A---B---C feature
#       /
#  D---E---F---G upstream/master
#
# The library maintainer asks as to “rebase on top of master”, so we fix any merge conflicts that may arise between both branches, and keep our changeset together. The maintainer would like to see a history like:
#               A'--B'--C' feature
#              /
#  D---E---F---G upstream/master
#
# We want to reapply our commits, one by one, in order, onto upstream’s master. Sounds like the description of the rebase command! Let’s see what commands would land us into the desired scenario:
#
# Point our `upstream` remote to the original fork
# git remote add upstream https://github.com/thoughtbot/factory_girl.git
#
# # Fetch latest commits from `upstream` (the original fork)
# git fetch upstream
#
# # Checkout our feature branch
# git checkout feature
#
# # Reapply it onto upstream's master
# git rebase upstream/master
#
# # Fix conflicts, then `git rebase --continue`, repeat until done
# # Push to our fork
# git push --force origin feature
#



#############################################
# git Undoing things
##############################################
alias gundos= 'git reset --soft'
# git reset --soft [commit/HEAD~{pos}]
# eg : git reset --soft HEAD~1
alias gundoi= 'git reset --mixed'
# git reset --mixed [commit/HEAD~{pos}]
# eg: git reset --mixed HEAD~1
# this is equivalent to git reset [commit/HEAD~{pos}]
alias gundoh= 'git reset --hard'
# git reset --hard [commit/HEAD~{pos}]
# eg: git reset --hard HEAD~1
alias gundof= 'git reset'
# git reset [filename] -> is equivalen to
# git reset --mixed [commit/HEAD ~{pos}] [filename]
# eg: git reset file1.txt -> git reset --mixed HEAD file1.txt
# eg:2 : git reset --mixed HEAD~1 file2.txt
# It doesn't move the HEAD pointer, but changes the index with that particular commits filename version
#


#################################################
# git reflog
#################################################
alias grefl= 'git reflog'
# Git keeps track of updates to the tip of branches using a mechanism called reflog. This allows you to go back to changesets even though they are not referenced by any branch or tag. After rewriting history, the reflog contains information about the old state of branches and allows you to go back to that state if necessary.
# Every time the current HEAD gets updated (by switching branches, pulling in new changes, rewriting history or simply by adding new commits) a new entry will be added to the reflog.
# eg : git reflog
# 0a2e358 HEAD@{0}: reset: moving to HEAD~2
# 0254ea7 HEAD@{1}: checkout: moving from 2.2 to master
# c10f740 HEAD@{2}: checkout: moving from master to 2.2
#
#



###################################################
# z plugin
###################################################
. .z.sh



####################################################
# powerline config
####################################################
powerline-daemon -q
# Uncomment  the below line if you want to use the powerline-status theme for your zsh shel(oh-my-zsh) theme
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh



##############################
# Python Config
###############################
export PYTHONDONTWRITEBYTECODE=1



####################################################
# Vim CheatSheet
#####################################################
#
#### e ##### 
# Move to the end of a word.
#### w #####
# Move forward to the beginning of a word.
#### W ##### 
# Move forward a WORD (any non-whitespace characters).
#### b #####
# Move backward to the beginning of a word.
#### $ #####
# Move to the end of the line.
#### 0 ##### 
# Move to the beginning of the line.
#### ) ##### 
# Jump forward one sentence.
#### ( ##### 
# Jump backward one sentence.
#### } #####
# Jump forward one paragraph.
#### { ##### 
# Jump backward one paragraph.
#### H ##### 
# Jump to the top of the screen.
#### M ##### 
# Jump to the middle of the screen.
#### L #####
# Jump to the bottom of the screen.
#### G ##### 
# Jump to end of file.
#### 1G #####
# Jump to beginning of file (same as gg).
#### 50G #####
# Jump to line 50.

#### v #####
# Select a word
#### V #####
# Select a line
##### d ######
# Cut or Delete selection
##### Y ######
# Copy Selection
##### dw #####
# delete a word
##### dd #####
# delete a line
##### . ######
# repeat last command
##### u ######
# Undo last command
##### CTRL+r  #####
# redo last command
##### :red[count] ####
# redo count number of times
#



