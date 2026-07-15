if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting ""
    complete -c doas -w sudo
    
    alias update='doas apt update && apt list --upgradable && doas apt upgrade && flatpak update'
    
    alias sudo='doas'
    alias zstop='sudo systemctl stop zerotier-one'
    alias zstart='sudo systemctl start zerotier-one'
    alias zrestart='sudo systemctl restart zerotier-one'
    alias zstatus='sudo systemctl status zerotier-one'
    
    alias m='micro'
    alias ll='ls -la'
    
    # быстрые команды для управления zapret
    alias zapret-config='$HOME/zapret-configs/install.sh'
    alias zapret-utils='$HOME/zapret-configs/utils-zapret.sh'
    
end
