#!/bin/sh

printf '\033c'
sudo pacman -Syu --needed noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-dejavu ttf-liberation ttf-nerd-fonts-symbols-2048-em ttf-nerd-fonts-symbols-common awesome-terminal-fonts ttf-jetbrains-mono ttf-nerd-fonts-symbols-2048-em-mono
echo "fonts done"
