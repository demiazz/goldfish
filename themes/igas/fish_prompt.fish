function fish_prompt --description "Theme: igas"
  echo -n -s '[' (date +%H:%M) '] ' (set_color $fish_color_cwd) (pwd) (set_color normal) ' $ '
end
