# Assets

This branch is an orphan branch used to store assets such as the svg files outputed by typst.

## Setup of this branch

To create this branch  
```bash
git checkout --orphan assets
git reset --hard
```
Then add a file such as this `README.md` and commit it so that the branch do not remain empty and push it to origin
```bash
touch README.md
git add README.md
git commit -m "create README.md"
git push -u origin assets
```

From the main branch
```bash
git checkout main
```
a git worktree can be used for convenience. Create a folder `assets/` and link it to the `assets` branch with the `git worktree` command, and add this folder to the `.gitignore`  
```bash
git worktree add assets
echo "assets/" >> .gitignore
```
From now, simply going into the `assets/` directory will automatically checkout to the `assets` branch, and leaving the folder will checkout back to the `main` branch.  
