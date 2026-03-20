cat brainrot.sh >> ~/.bashrc
cp -f ~/.config/i3/config ~/.config/i3/config.old
cp ./config ~/.config/i3/config -f
exec bash
