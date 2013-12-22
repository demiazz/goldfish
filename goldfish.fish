#===== GOLDFISH RUNTIME ========================================================

# Load utilities
. $fish_path/utilities.fish

# Load plugins
for plugin in $goldfish_plugins
  . $fish_path/plugins/$plugin.fish
end

# Load user plugins
for plugin in $HOME/.config/fish/plugins/*.fish
  . $plugin
end
