# Dotfiles  

This repository contains my dotfiles for Debian based Linux. It includes configuration for `zsh`, `vim`, `oh-my-zsh`, `oh-my-posh`, and manages them using GNU `stow`.  

Optional tools and plugins like `zoxide` and `fzf` are also recommended to enhance your workflow.  

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

### Optional oh-my-zsh plugins
- **zsh-autosuggestion**: Inline command suggestions based on history.
- **zsh-syntax-highlighting**: Colors commands for syntax clarity.
- **zsh-fast-syntax-highlighting**: Faster syntax highlighting alternative.
- **zsh-autocomplete**: Smarter, menu-based autocompletion.

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

Run the following command to restore your original .zshrc file that was overwritten by Oh My Zsh.
```bash
mv ~/.zshrc ~/.zshrc.omz                                                                       
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
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

Optional plugins installation:
- zsh-autosuggestion
- zsh-syntax-highlighting
- zsh-fast-syntax-highlighting
- zsh-autocomplete
```bash
# Install zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-fast-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

# Install zsh-autocomplete
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
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
- **zsh-autosuggestion**: [`https://github.com/zsh-users/zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions)
- **zsh-syntax-highlighting**: [`https://github.com/zsh-users/zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting)
- **zsh-fast-syntax-highlighting**: [`https://github.com/zdharma/fast-syntax-highlighting`](https://github.com/zdharma/fast-syntax-highlighting)
- **zsh-autocomplete**: [`https://github.com/marlonrichert/zsh-autocomplete`](https://github.com/marlonrichert/zsh-autocomplete)

Feel free to customize this repository to your liking! Contributions and improvements are welcome.