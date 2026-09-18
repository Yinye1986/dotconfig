fish -c exit

tee -a ~/.config/fish/config.fish <<'EOF'
function fm
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end
function ws
        set p (which $argv[1])
        pacman -Qo $p
end
EOF
