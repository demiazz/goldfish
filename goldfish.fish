#===== GOLDFISH RUNTIME ========================================================

# Turn off welcome message
set fish_greeting ""

# Load goldfish functions
set fish_function_path $fish_function_path $goldfish_path/functions

#===== AUTO UPDATING ===========================================================

if not test $disable_update_checking = true
  check_for_update
end

#===== PLUGINS LOADING =========================================================

# Load plugins
for plugin in $plugins
  . $goldfish_path/plugins/$plugin.fish
end

# Load user plugins
for plugin in $HOME/.config/fish/plugins/*.fish
  . $plugin
end

#===== THEME LOADING ===========================================================

if set -q theme
  if test -d $goldfish_path/themes/$theme
    set fish_function_path $goldfish_path/themes/$theme $fish_function_path
  else if test -d $HOME/.config/fish/themes/$theme
    set fish_function_path $HOME/.config/fish/themes/$theme $fish_function_path
  else if test -d $HOME/.config/fish/theme
    set fish_function_path $HOME/.config/fish/theme $fish_function_path
  end
else
  if test -d $HOME/.config/fish/theme
    set fish_function_path $HOME/.config/fish/theme $fish_function_path
  end
end
