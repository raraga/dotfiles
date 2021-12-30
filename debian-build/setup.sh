#!/bin/bash
# Run as root to save some trouble.

# Install some great base stuff
echo 'Setting the foundation...'
apt -y install git fzf curl tmux ripgrep wget jq certutil nginx kitty screenfetch i3 xorg

# Install PHP 8
echo 'Installing PHP 8...'
apt -y install apt-transport-https lsb-release ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt update

# Install Composer
echo 'Installing Composer...'
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# Install Oh-My-Zsh
echo 'Installing Oh-My-Zsh...'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Build Neovim
echo 'Building neovim...'
apt -y install apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen
cd neovim && make
make install

# Install vim-plug
echo 'Installing vim-plug...'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install brave browser
echo 'Browse with the brave!'
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt -y install brave-browser

# Configs
echo 'On to the configs!'
cp configs/.zshrc ~/
cp configs/.aliases ~/
cp configs/kitty.conf ~/.config/kitty/
cp configs/dracula.conf ~/.config/kitty/
cp configs/.tmux.conf ~/
source ~/.zshrc
source ~/.aliases


