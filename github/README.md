# How to set up ssh key in github
generate private key and public key
```shell
ssh-keygen -f ~/.ssh/github-key
```
append on /etc/ssh/ssh_config
```shell
Identityfile github-key
```
verify the private key
```shell
ssh -T git@github.com
```
push repository to remote
```shell
git remote add origin git@.....
git push -u origin main
```
# How to use your personal token
#### when you push commits to your repos , git need to verify your identity

* ### enter your github username 
* ### enter your personal token as password
