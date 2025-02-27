# Dotfiles  

This repository contains my dotfiles for Debian based Linux. It includes configuration for `zsh`, `vim`, `oh-my-zsh`, `oh-my-posh`, and manages them using GNU `stow`.  

Optional tools like `zoxide` and `fzf` are also recommended to enhance your workflow.  

## Prerequisites  

Ensure you have the following installed:  
- **zsh**: A powerful shell alternative to bash.  
- **vim**: A highly configurable text editor.  
- **oh-my-zsh**: A framework for managing zsh configuration
- **oh-my-posh**: A prompt theme engine for any shell.  
- **GNU stow**: A symlink manager for dotfiles.  

### Optional Tools  
- **zoxide**: A smarter `cd` command.  
- **fzf**: A command-line fuzzy finder.  

## Installation  

### Step 1: Clone this repository  
```bash  
git clone https://github.com/fareezmurad/dotfiles.git ~/dotfiles  
cd ~/dotfiles
```

### Step 2: Install the prerequisites
Run the following commands to install the required tools:
```bash
sudo apt update  
sudo apt install -y zsh vim stow

# Install oh-my-posh  
curl -s https://ohmyposh.dev/install.sh | bash -s

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Run the following command to recover original .zshrc file that have been overwrite by ohmyzsh
```bash
mv ~/.zshrc ~/.zshrc.omz                                                                       
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
```

Run the following command to install zsh-autosuggestion and zsh-syntax-highlighting
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
```

Optional installations:
- zoxide
```bash
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```
- fzf
```bash
sudo apt install -y fzf  
```

### Step 3: Symlink the dotfiles using GNU stow
Run stow to symlink the dotfiles in ~/dotfiles directory.
```bash
cd ~/dotfiles
stow zsh vim  
```

### Step 4: Set zsh as your default shell
``` bash
chsh -s $(which zsh)

# Restart terminal session
exec zsh
```
Restart your terminal or log out and log back in for the changes to take effect.

## Documentation

- **zsh**: [`https://www.zsh.org/`](https://www.zsh.org/)  
- **vim**: [`https://www.vim.org/`](https://www.vim.org/)
- **oh-my-zsh**: [`https://github.com/ohmyzsh/ohmyzsh/`](https://github.com/ohmyzsh/ohmyzsh/)
- **oh-my-posh**: [`https://ohmyposh.dev/`](https://ohmyposh.dev/)
- **GNU stow**: [`https://www.gnu.org/software/stow/`](https://www.gnu.org/software/stow/)  
- **zoxide**: [`https://github.com/ajeetdsouza/zoxide`](https://github.com/ajeetdsouza/zoxide)  
- **fzf**: [`https://github.com/junegunn/fzf`](https://github.com/junegunn/fzf)  

Feel free to customize this repository to your liking! Contributions and improvements are welcome.