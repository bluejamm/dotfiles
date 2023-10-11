alias la='ls -a --icons'
alias logout='qdbus org.kde.ksmserver /KSMServer logout 0 0 0'
alias ll='eza -alh --icons'
alias llatest='eza -alh -s created --icons'
alias vim='nvim'
alias top='bpytop'
alias fetch='fastfetch --logo arch2'
alias ..='cd ..'
alias ls='eza --icons'
alias files='nohup thunar > /dev/null 2>&1 &'
alias calc="qalc"
alias yay="yay --color always"
# alias clip="xsel -b"
alias clip="wl-copy"
alias clip-dir="pwd | clip"
alias cal="calcure"
alias dust-sum="dust -bd 0"
alias banner='figlet -d ~/github/figlet-fonts/ -f "3d"'
alias aliases="vim ~/.config/fish/aliases.fish"
alias yay="yay --nodiffmenu"
alias rec-region="slurp | xargs -I % wf-recorder -f ~/Downloads/screen-record.mp4 -g %"
alias pactivate="source venv/bin/activate.fish"
# alias djv="tev"
alias crash-houdini="killall -SEGV houdini-bin"
alias film="cd ~/Perforce/y3-film/"

# vpn
alias vpn="sudo wg"
alias vpn-on="sudo wg-quick up uk-lon"
alias vpn-off="sudo wg-quick down uk-lon"
alias vpn-list="sudo ls /etc/wireguard"

# mount
alias phone-mount="jmtpfs /mnt/phone"
alias phone-umount="fusermount -u /mnt/phone"

# backup
alias back-remote="restic --repository-file ~/.config/restic/b2-credentials/repository --password-file ~/.config/restic/b2-credentials/key"
alias back-local="restic --repository-file ~/.config/restic/local-credentials/repository --password-file ~/.config/restic/local-credentials/key"

# git
alias gs="git status"
