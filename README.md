# Git Cheat Sheet:
Before using any `git` command, open your terminal/command prompt and navigate to the directory you wish to update/clone into using `cd path/to/directory`.

### Clone this repository:
  - `git clone https://github.com/sierra-college-cs-club/Space_Invaders.git`
  - Creates a new folder in the selected directory with this repositories code.
  
### Update your local repo:
  - `git pull`
  - Updates the repo that your terminal/command prompt is at.
  - If merging is necessary, either delete the colliding file or refer to git's documentation [here](https://git-scm.com/docs/git-merge).
  
### Commit your changes:
  - 'Stage' your changes using `git add filename.extension`
  - `git commit -m "descriptive message here!"`
  - Solidifies your changes with a message, ideally pertaining to the changes made.
  
### Update the remote repo:
  - `git push`
  - Updates the repository on GitHub with your changes.
  - You **may** need to sign in before pushing.
