# My chill configurations

## Include
1. vim
2. bash
3. tmux

## Usage
1. get Vundle plugin
2. Install YouCompleteMe by following commands:

```
   cd ~/.vim/bundle/YouCompleteMe
   ./install.py --clang-completer
```   

## Notes

### Powerline font issue
If powerline does not look great, then:
> 1. get powerline font and set into terminal profile
> 2. if using tmux: set TERM=xterm-color256

### YouCompleteMe vim version dependency

For Ubuntu 16.04, 14.04, Linux Mint 18/17, and their derivatives, install vim 8.0v here.
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim
```
