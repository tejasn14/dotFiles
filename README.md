Run `stow` to symlink everything or just select what you want

```bash
stow */ # Everything (the '/' ignores the README)

stow zsh # Just the zsh config
```



```
What not to stow
  - tordoneMac
  - vpn
  - zsh
```



```bash
# stow for transmission installed through homebrew
stow -t /Users/tejas/Library/Application\ Support/transmission-daemon transmission
```

