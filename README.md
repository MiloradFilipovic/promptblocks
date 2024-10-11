# [prompt][blocks]
Minimal, front-end oriented, theme for [oh-my-zsh](https://ohmyz.sh/).

![image](https://github.com/user-attachments/assets/2b3521d3-5281-4c2a-8c67-2f8d9ba2c5b9)

![image](https://github.com/user-attachments/assets/56810dd8-165e-4eb9-bc55-6169bbf40054)

## Installation
1. Clone the repo
2. Place the `promptblocks.zsh-theme` file in your `$ZSH_CUSTOM/themes` directory
3. `source ~/.zshrc`

## Misc
### Node version managers - display live Node.js version
If you are using a Node.js version manager, like [nvm]([url](https://github.com/nvm-sh/nvm)), node version in the prompt won't be updated when you switch. 

In order to achieve this, you can create a custom function in your `~/.zshrc` file that will source your zsh config every time you change Node version.
Note that, depending on your configuration, this will be slow down the original command execution.

If using nvm, this function can look like this:
```zsh
function nv ()  { nvm use $1 && source ~/.zshrc }
```  
Now, you can use your new `nv` command to switch Node version and reload prompt:
```zsh
nv 20
```
