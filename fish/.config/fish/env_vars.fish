# PATH
if not contains "$HOME/.local/bin" $PATH
    set -gx PATH $HOME/.local/bin $HOME/bin $PATH
end
if not contains "$HOME/.cargo/bin" $PATH
    set -gx PATH $HOME/.cargo/bin $PATH
end

set -gx PATH /opt/hfs19.5.303/bin $PATH

if test -f ~/.config/fish/credentials.fish
    source ~/.config/fish/credentials.fish
end

set -gx EDITOR nvim
set -gx OPENSSL_ia32cap ~0x200000200000000 # titanfall2 fix

set -gx XDG_DATA_DIRS /home/parker/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:$XDG_DATA_DIRS

set -gx P4CONFIG /home/parker/.config/Perforce/p4config
set -gx P4IGNORE /home/parker/Perforce/y3-film/pipeline/perforce/p4ignore

set -gx film_root /home/parker/Perforce/y3-film

# for nix package manager
set -gx LOCALE_ARCHIVE /lib/locale/locale-archive
set -gx NIXPKGS_ALLOW_UNFREE 1
