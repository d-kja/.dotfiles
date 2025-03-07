### FISH CONFIG

if status is-interactive
    # Remove greeting
    # REMOVE > set fish_greeting
    function fish_greeting
      fastfetch
    end

    # Update done.fish
    set -U __done_min_cmd_duration 10000
    set -U __done_notification_urgency_level low

    # Aliases   
    alias rmf="rm -rf"
    alias open="xdg-open"
    alias rand="openssl rand -base64 32"

    alias c="clear"
    alias C="clear"
    alias l="ls -la"
    alias L="ls -la"

    alias gc="git checkout"
    alias gst="git status"
    alias glog="git log --oneline"
    alias gadd="git add ."
    alias gpush="git push"
    alias gpull="git pull"
    alias gbr="git branch"

    alias dps="docker ps"
    alias dc="docker compose"
    alias dcu="dc up -d"
    alias dcd="dc down"
    alias docker-start="systemctl start docker"
    alias docker-rootless="docker context use rootless"
    alias docker-host="export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock"

    alias cgrub-find="sudo awk -F\' '\$1==\"menuentry \" {print \$2}' /boot/grub2/grub.cfg"
    alias cgrub-default="sudo grub2-set-default \"\$(cgrub-find)\""
    alias cgrub-rebuild="sudo grub2-mkconfig -o \"\$(readlink -e /etc/grub2.cfg)\""
    alias cgrub-update="cgrub-default && cgrub-rebuild"

    alias f="yazi"
    alias ze="zellij"
    alias gui="gitui"
    alias lat="laterem"

    # ------------------------- #

    # Binaries

    set PATH $PATH /opt/nvim-linux64/bin
    set PATH $PATH $HOME/.local/bin

    # Variables

    # RUST UP
    set PATH $PATH "$HOME/.cargo/bin"

    # STARSHIP PLUGIN
    starship init fish | source

    # ZOXIDE PLUGIN
    zoxide init fish --cmd cd | source

    # NPM PATH
    set NPM_PACKAGES "$HOME/.npm-packages"
    set PATH $PATH $NPM_PACKAGES/bin
    set MANPATH $NPM_PACKAGES/share/man $MANPATH

    # GOLANG
    set PATH $PATH $HOME/go/bin
    set PATH $PATH /usr/local/go/bin

    # BUN
    set --export BUN_INSTALL "$HOME/.bun"
    set --export PATH $BUN_INSTALL/bin $PATH
    
    # DOCKER
    # set --export PATH /usr/bin
    set DOCKER_HOST "unix:///run/user/1000/docker.sock"

    # ZELLIJ
    eval (zellij setup --generate-auto-start fish | string collect) 
end

