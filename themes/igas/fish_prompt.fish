function fish_prompt --description "Theme: igas"
  echo -n -s (set_color $fish_color_cwd) (pwd) (set_color normal) ' $ '
end
