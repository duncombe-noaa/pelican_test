# IOOS Pelican Test Pages

##  Introduction

Pelican provides a platform for presenting Markdown text as HTML webpages. These pages are a 
testbed developing an SOP  for creating and updating a github hosted site for IOOS documentation.

## Concept

Source material (MD, HTML, PDF, etc.) for the webpages are in the master branch. Pelican is used to convert these appropriately to 
HTML. Then the result is rearranged into the correct format for a website, initially 
[http://duncombe-noaa.github.io/pelican_test](http://duncombe-noaa.github.io/pelican_test), and committed into 
gh-pages branch. When this branch is pushed up to github, they will be immediately accessible publicly. 

## Execution under Windows (most complex case)

- Is pelican installed? (`pip install pelican markdown`)
- Clone the repository (in a git shell)
- Edit the material in the content\ folder of the master branch 
- In a python (anaconda) shell, run  `pelican content`.
- In a git shell, commit and push the master branch to the origin.
- Checkout the gh-pages branch.
- Run the powershell script batch_arrange.ps1 (which will move everything from the .\output sub-directory to the .\ directory).
- Commit and push the gh-pages branch to the origin.
- Check that the correct webpages appear on the site.

## 
