PS1="\[\033[38;5;223m\]${debian_chroot:+($debian_chroot)}\u@\h$([ -n "$STY" ] && echo "[screen]"):\w\$\[\033[m\] "
# Fix screen vim color issue
export TERM=xterm-256color
# Keeps programs running without losing Kerberos
inception () {
    screen -S ${1:-inception} ssh $USER@$HOSTNAME
}
# Show running screens
screen -ls
