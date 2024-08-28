### Clone/Download repo - only for the 1st time

    git clone <repo URL>



### Pull the changes from remote repo to local repo - To download the subsequent changes in the remote repo.
> Make sure the working directory is changed to the directory where the local repo exist 

    git pull    



### Add the changes to the staging/index area -

> _to add by file name_ 

    git add <file-name>

or

> _to add all the changes_ 

    git add .   


### Commit changes to local repo

    git commit -m "message why it is being committed"


### Push the changes to remote repo

> _if it is 'main' branch_ 

    git push origin main

or

> _if any specific branch_

    git push origin <branch name>


### add, commit and push in a single line

> _for a single file_

    git add <filename> ; git commit -m "message why it is being committed"; git push origin main

or

> _for all changes_

    git add . ; git commit -m "message why it is being committed"; git push origin main