function fish_prompt --description 'Igas theme'
  echo -n -s (set_color $fish_color_cwd) (pwd) (set_color normal) ' $ '
end
