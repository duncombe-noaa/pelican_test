# power shell script to remove contents of .\ except output\ and then move contents of output\ up into .\
# 

# Author: CMDRae 2014-08-21

# run this script after pulling the source (master) from github, making changes, pushing them to github, 
# running pelican contents to populate output\, and changing the branch to gh-pages.
# The script will transfer output up to gh-pages. Then push the branch (excluding output) up to github, and yoour 
# new pages appear on the website at github.io

# a list of files in .\, not including output\
# $files=get-childitem -name | grep -v "output"
# more better:
$files=get-childitem -name -Exclude "output",".git*","batch_arrange.ps1","README.md" 

# $files

# nuke $files by passing the list to Remove-Item, being sure to Recurse, else complaints ensue
$files | Remove-Item -Recurse

# and move the contents of output to the current (hoping for no overlap)
Move-Item output\* .

# now we should be able to 
#      git push 
