# REPO_URL https://github.com/Arunsingh589/BlackBird-Task-1
# Commands used in steps 1-8 

# Step 1: Create react app 
npx create-react-app BlackBird-Task-1
cd BlackBird-Task-1

# Step 2: Log into GitHub CLI 
gh auth login

# Step 3: Initialize Git repository and commit initial code
git init
git add .
git commit -m "Initial commit"

# Step 4: Create repo and checkout to the "update_logo" branch
gh repo create --public --source=. --remote=origin
git checkout -b update_logo

# Step 5: Replace logo and link
curl -o src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg
sed -i '' 's|logo.svg|./logo.svg|' src/App.js
sed -i '' 's|https://reactjs.org|https://www.propelleraero.com/dirtmate/|' src/App.js

# Step 6: Commit and push changes
git add .
git commit -m "Update logo to Propeller and link to Dirtmate"
git push --set-upstream origin update_logo

# Step 7: Create and merge a PR
gh pr create --title "Update logo and link" --body "Updated logo and link as per requirements."
gh pr merge --merge
