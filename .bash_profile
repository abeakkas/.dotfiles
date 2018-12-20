PS1="\[\033[38;5;223m\]${debian_chroot:+($debian_chroot)}\u@\h$([ -n "$STY" ] && echo "[screen]"):\w\$\[\033[m\] "
# Keeps programs running
inception () {
    screen -S inception ssh $USER@$HOSTNAME
}
screen -ls
