# power shell script to remove contents of .\ except output\ and then move contents of output\ up into .\

# a list of files in .\, not including output\

# $files=get-childitem -name | grep -v "output"

# more better:
$files=get-childitem -name -Exclude "output"
# $files

$newfiles=get-childitem -name -Path ".\output\"
# $newfiles

# woo-woo!

# nuke $files 


# and move $newfiles
