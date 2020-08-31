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

x = seq(1, 10, len =10)
y = 40*2 + rnorm(10,0,5)
plot(x,y)

# notice in the Git tab to the right that the status of each file is shown

# click the .gitignore file
# this tells git files that git should ignore completely. Here, it will be R.proj.user, history, etc

# git uses 256 SHA hash language to store, so it uses this to find what has changed
# the commit message will have a number that encodes the name of the commit

# now that we've made initial commit, make changes and commit

summary(x)

# code getting long, split into two. Put analysis in one, and summaries in other. 

# you might want to tag a certain commit as a milestone, then you can refer to it as its tag
# for example the script as it was when you submitted a manuscript
# the below must be done in terminal, not R 

git tag -a 'V.1' -m 'Version 1'

# the name of the tag (i.e. here "V.1") can not have spaces in it
# view the history, you will see that there is now a "tag"  against the latest commit 

# sometimes you may need to revert to an older version
# can do a "checkout" of what the file was 2 weeks ago, for example
# moves head to that time points commit


git checkout c7eefd
# where # is a commit name
# for example, go  back to the bug fix and summary commit
# from here  you can also make another branch
>>>>>>> Experimental


# can do a "reset" also
# totally erases the last commit

# can do a "revert"
# e.g. one commit to add the word  "fish" 
# then another  commit to take it away

git  revert HEAD  --no-edit


# can create new branches
# create branch "experimental"

mean(x)

# merge back to master file. Must be ON branch you want to take the changes to.
git checkout master
git merge Experimental


# push to github to store online
git remote add origin https://github.com/hillaryadele/murraycourse2020.git
git branch -M master
git push -u origin master





