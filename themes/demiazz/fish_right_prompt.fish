function fish_right_prompt --description "Theme: demiazz"
  if test $fish_last_status -eq 0
    set __background green
  else
    set __background red
  end

  set_color -b normal black
  printf " "
  set_color -b normal $__background
  printf ""
  set_color -b $__background black
  printf " %s " (date "+%H:%M")
  set_color -b normal $__background
end
