# REPO_URL https://github.com/Arunsingh589/BlackBird-Task-1
# Commands used in steps 1-8 

# Create react app 
npm create vite@latest BlackBird-Task-1
cd BlackBird-Task-1

# Log into GitHub CLI 
gh auth login

# Create repo and checkout to the "update_logo" branch
gh repo create
git checkout -b update_logo

# After making changes, commit and push them up
sed -i "" 's|img src={logo}|img src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg"|g' src/App.js
sed -i "" 's|href="https://reactjs.org"|href="https://www.propelleraero.com/dirtmate/"|g' src/App.
git add .
git commit -m "Update logo to Propeller and link to Dirtmate"
git push --set-upstream origin update_logo

# Create and then approve a PR
gh pr create --title "Update logo and link"
gh pr merge