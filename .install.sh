echo "Starting installation"

pacman -Syyu

echo "Installing packages"

pacman -S python rust ghc
pacman -S qemu
pacman -S arm-none-eabi

pacman -S xorg-setxkbmap xorg-xev xorg-xmodmap

pacman -S i3-gaps polybar rofi
pacman -S kitty
pacman -S neovim ranger neofetch htop
pacman -S ttf-jetbrains-mono
pacman -S flameshot

pacman -S firefox
pacman -S pamac



echo "Installing AUR packages"

pamac install nerd-fonts-jetbrains-mono
pamac install picom-git

echo "Configuring system"

cd ~
source ./.bashrc
i3-msg restart
