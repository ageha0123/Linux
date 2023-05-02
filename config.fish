set -x XCURSOR_SIZE 22

#alias cmus='tmux new-session -A -D -s cmus "$(which --skip-alias cmus)" > /dev/null'
alias mpdd='killall mpd &> /dev/null; mpd; mpc clear &> /dev/null; mpc add /'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x MOZ_ENABLE_WAYLAND 1
set fish_greeting
export EDITOR=nvim

function fish_prompt -d "Write out the prompt"
	printf "%s" (set_color yellow) "  "
	printf "%s" (set_color cyan) (prompt_pwd) (set_color normal)
	printf " "
end

#function fish_right_prompt -d "Write out the right prompt"
#    echo (set_color magenta)"  "(set_color white)(mpc --format %title% current 2> /dev/null)
#end

set PATH ~/.local/bin ~/.bin ~/.bin/go/bin ~/.bin/kitty/bin ~/.bin/tidal-dl $PATH

