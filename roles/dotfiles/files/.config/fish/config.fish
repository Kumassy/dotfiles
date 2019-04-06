powerline-daemon -q
set fish_function_path $fish_function_path "/usr/lib/python2.7/site-packages/powerline/bindings/fish"
set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"
powerline-setup

# function fish_prompt
#     powerline-shell --shell bare $status
# end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
