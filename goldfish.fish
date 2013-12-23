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

# Load theme
if test (set -q goldfish_theme)
  if test -e $fish_path/themes/$goldfish_theme.fish
    . $fish_path/themes/$goldfish_theme.fish
  else if test -e $HOME/.config/fish/themes/$goldfish_theme.fish
    . $HOME/.config/fish/themes/$goldfish_theme.fish
  else if test -e $HOME/.config/fish/theme.fish
    . $HOME/.config/fish/theme.fish
  end
else
  if test -e $HOME/.config/fish/theme.fish
    . $HOME/.config/fish/theme.fish
  end
end
