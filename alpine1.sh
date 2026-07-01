echo "Make sure all command are exactly Installed"
echo "Procressing start!"

sudo apk update && apk upgrade
sudo apk add nvim

cat > ~/.config/fish/config.fish <<'EOF'
if status is-interactive
    # Commands to run in interactive sessions can go here
end
export EDITOR="nvim"
export fishconfig='~/.config/fish/config.fish'

alias apkup="sudo apk update && apk upgrade"
alias ..="cd .."
alias fcon="$EDITOR $fishconfig"
alias fload="source $fishconfig && echo 'Reloaded CONFIG fish'"
alias cls="clear"
EOF

source ~/.config/fish/config.fish

echo "End of procressing!"
