# My Dotfiles 

initially forked from [Dotfiles-in-100-Seconds](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds). Watch the [video](https://www.youtube.com/watch?v=r_MpUP6aKiQ).

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```bash
xcode-select --install
```


2. Clone repo into new hidden directory.

```bash
git clone git@github.com:hansen-simon/.dotfiles.git ~/.dotfiles
```


3. Create symlinks in the Home directory to the real files in the repo.

```bash
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.git-completion.bash ~/.git-completion.bash
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```


4. Install Homebrew, followed by the software listed in the Brewfile.

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile
```

## to update the Brewfile
```bash
brew bundle dump --describe
```
