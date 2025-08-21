
# ssh setup:
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
pbcopy < ~/.ssh/id_rsa.pub
# or:
ssh-keygen -t ed25519 -C "your_email@example.com"
pbcopy < ~/.ssh/id_ed25519.pub
# Add key to github
# Start ssh agent:
eval "$(ssh-agent -s)"
  # config must exist
open ~/.ssh/config
# like:
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
# Add to keychain:
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
# ssh-add ~/.ssh/id_rsa
# Test:
ssh -T git@github.com

# Create:
git init -b main
git add .
git commit -m "First commit."
# git remote add origin git@github.com:edevaldo/hc12.git
git remote set-url origin git@github.com:username/your-repository.git
git push -u origin main

# Maintain:
git add .
git status
git commit -m "`date +"%Y%m%d"`"
git push -u origin main

# Links:
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
https://gist.github.com/xirixiz/b6b0c6f4917ce17a90e00f9b60566278
https://docs.github.com/en/get-started/git-basics/managing-remote-repositories

