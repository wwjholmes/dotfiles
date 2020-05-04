# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install powerlevel9k for Oh-My-ZSH
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# [autojump] Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember to source the file to update your current session):
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
sudo yum install autojump-zsh

#FZF
git -c http.proxy=fwdproxy:8080 clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

env $(fwdproxy-config --format=sh curl) ~/.fzf/install

#Install ET on devserver
sudo feature install fb-vim
sudo feature install et
sudo systemctl enable --now et
sudo systemctl status et

# Build and Install Vim & YouCompleteMe 
# https://medium.com/@chusiang/install-the-vim-8-0-and-youcompleteme-with-make-on-centos-7-4-1573ad780953
