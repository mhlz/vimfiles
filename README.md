# vimfiles

### Installation:

```
git glone git@github.com:happeens/vimfiles.git ~/vimfiles
cd ~/vimfiles
git submodule init
git submodule update
ln -s ~/vimfiles ~/.vim
ln -s ~/vimfiles/vimrc ~/.vimrc
```

Now run vim and do :PluginInstall to have Vundle fetch all plugins.
Then compile YCM:

```
python3 ~/vimfiles/bundle/YouCompleteMe/install.py
```
