#<defaults>
PS1="\[\033[38;5;223m\]${debian_chroot:+($debian_chroot)}\u@\h$([ -n "$STY" ] && echo "[screen]"):\w\$\[\033[m\] "
# Keeps programs running
inception () {
    screen -S ${1:-inception} ssh $USER@$HOSTNAME
}
update_bash_profile () {
    perl -0pe "s/#<defaults>.*#<\/defaults>/$(curl https://raw.githubusercontent.com/abeakkas/defaults/master/.bash_profile)/gs" ~/.bash_profile > ~/.bash_profile
}
screen -ls
#</defaults>
