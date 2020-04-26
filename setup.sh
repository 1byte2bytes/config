set -e

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install nvim cmake python3 tmux
python3 -m pip install --user --upgrade pynvim
mkdir -p ~/.vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.config/nvim
cat .config/nvim/init.vim > ~/.config/nvim/init.vim
mkdir -p ~/.vim
cat .vim/.ycm_extra_conf.py > ~/.vim/.ycm_extra_conf.py
nvim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer

git clone https://github.com/asnr/cmus.git -b asnr-master
cd cmus
./configure
make
make install
