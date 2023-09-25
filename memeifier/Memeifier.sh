cp ./i3l.png ~/afs/
cp tehc.jpg ~/afs/

# Modifs du bashrc
feh --bg-scale ~/afs/tehc.jpg
setxkbmap fr bepo
echo "feh --bg-scale ~/afs/tehc.jpg" >> ~/.bashrc
echo "alias i3lock='i3lock -i ~/afs/i3l.png'" >> ~/.bashrc
echo "alias emacs='vim'" >> ~/.bashrc
echo "alias nano='vim'" >> ~/.bashrc
echo "alias firefox='firefox https://www.youtube.com/watch?v=dQw4w9WgXcQ'" >> ~/.bashrc
echo "alias gedit='vim'" >> ~/.bashrc
echo "setxkbmap fr bepo" >> ~/.bashrc

# Terminaux en blanc
echo "printf \"\033[47m\033[30m\"" >> ~/.bashrc

clear
exit 0
