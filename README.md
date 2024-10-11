# [prompt][blocks]
Minimal, `node.js` + `git`, theme for [oh-my-zsh](https://ohmyz.sh/).

![image](https://github.com/user-attachments/assets/f4a30fe2-cc2e-4041-8c9e-7ae811783cbf)

![image](https://github.com/user-attachments/assets/6d039a9c-69af-4fae-b51e-3e9724b7c52a)

## Installation
1. Clone the repo
2. Place the `promptblocks.zsh-theme` file in your `$ZSH_CUSTOM/themes` directory
3. In your `~/.zshrc` file: `ZSH_THEME="promptblocks"`
4. Reload zsh: `source ~/.zshrc`

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
