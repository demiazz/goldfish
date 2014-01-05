function fish_right_prompt --description "Theme: demiazz"
  if test $fish_last_status -eq 0
    set __background green
  else
    set __background red
  end

  set_color -b normal white
  printf " "
  set_color -b normal $__background
  printf ""
  set_color -b $__background  white
  printf " %s " (date "+%H:%M")
  set_color -b normal $__background
end
