#Git/Github Cheat Sheet

###Typical git commands:
``clone`` – gets a copy of a remote repository locally  
```fetch```- see changes of a remote repository   
```pull``` – get changes of a remote repository to update local version   
```add``` – add changes to stage so included in next commit (needed for new files)   
```commit``` – take a snapshot of current changes in local repository  
```push``` – send local commits (changes) to remote repository  

###Get a github repository using Terminal and save it locally:
```$ git clone https://github.com/mfadtparis/CreativityAndComputation-2015.git```   

###Update local git repository with remote version on github:
```$ git pull```

###Add new files to local git (use when you create or put new files in git folder)
```$ git add --all```
or
```$ git add myDirectoryOrFile```

###Describe your changes on a local repository:
```$ git commit -m “first commit”```

###Update remote version of repository from local version (push your changes):
```$ git push```
or (if more than one branch)
```$ git push origin master```

###Show current changes on local repository
```$ git status```

###Typical steps for working with git:
```$ cd myLocalDirectoryPath```    
```$ git fetch ```    
```$ git pull```   
```$ git add myFileOrDirectory```   
```$ git commit -m “message explaining changes”```   
```$ git push```

