# Setup 

## Homebrew

```bash
brew install tmux
brew install wget
brew install fzf
brew install --cask rectangle
brew install --cask visual-studio-code
brew install --cask kitty
brew install --cask wezterm
```

## GitHub

Generate SSH keys and add to GitHub:

```
ssh-keygen -t rsa -b 4096 -C "email"
```

Add to orgs, and switch notifications to work email.

## Misc

- Setup fzf:

  ```
  $(brew --prefix)/opt/fzf/install
  ```

- Hold keys to have them repeat in VSCode: 

  ```
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
  ```

```
microvac
zork
```
