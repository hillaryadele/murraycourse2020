################## Day 1 - Intro, Git #############

# https://github.com/pcinereus/SUYR_public # Murray's site
# http://r4ds.had.co.nz # - one of visualisation / data wrangling developers

# google "R studio cheat sheet" for great tips

# before getting into statistics, "3 pillars of reproducible research"
# code control / versioning --> git
# writing documents that have embedded code and results in them
# pre-registering research goals and methodological intentions (this is not a big thing yet) 

# Versioning with git
# git stores snapshots of your code and these can be stored on github
# each version stores information about what differences were made between versions

# there are three trees - workspace, staging area, local repository
# files can be one of four states - untracked (i.e. in workspace only), staged (i.e. in staging area), 
# committed (snapshot in the repository), modified (i.e. a new, uncommitted version with changes)
# you always have a master file and a "head" - the "head" is indicating the one that git is saving new changes to

# once off configuration - will not work in R studio - do in terminal
git config --global user.name HillarySmith
git config --global user.email hillary.adele@gmail.com

# how  to use git in command line.... make a new repository and initialise
mkdir name
cd name
git init

# however here we will do it within R

# Make a new R Project - tick "create git repository" 
# Make a new file, save as analysis.R
# write some code: 

x = seq(1, 10, len =1)
y = 40*2 + rnorm(10,0,5)
plot(x,y)

# notice in the Git tab to the right that the status of each file is shown

# click the .gitignore file
# this tells git files that git should ignore completely. Here, it will be R.proj.user, history, etc























