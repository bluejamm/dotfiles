alias la='ls -a --icons'
alias logout='qdbus org.kde.ksmserver /KSMServer logout 0 0 0'
alias ll='exa -alh --icons'
alias llatest='exa -alh -s created -r --icons'
alias vim='nvim'
alias top='bpytop'
alias fetch='fastfetch --logo arch2'
alias ..='cd ..'
alias ls='exa --icons'
alias files='nohup thunar > /dev/null 2>&1 &'
alias vpn="sudo wg"
alias vpn-on="sudo wg-quick up uk-lon"
alias vpn-off="sudo wg-quick down uk-lon"
alias calc="qalc"
alias yay="yay --color always"
alias clip="xsel -b"
alias cal="calcure"
alias dust-sum="dust -bd 0"
alias film="cd /home/parker/Perforce/parker-arch/"
alias banner='figlet -d ~/github/figlet-fonts/ -f "3d"'
alias aliases="vim ~/.config/fish/aliases.fish"

# backup
alias back-remote="restic --repository-file ~/.config/restic/b2-credentials/repository --password-file ~/.config/restic/b2-credentials/key"
alias back-local="restic --repository-file ~/.config/restic/local-credentials/repository --password-file ~/.config/restic/local-credentials/key"

# git
alias gs="git status"
