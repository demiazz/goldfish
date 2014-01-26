function fish_prompt --description "Theme: demiazz"
  set -g fish_last_status $status

  # current user

  switch $USER
    case root
      set_color -b red white
      printf " ROOT "
      set_color -b white red
      printf ""
      set_color -b black white
      printf ""
    case '*'
      set_color -b blue black 
      printf " %s " $USER
      set_color -b black blue
      printf ""
      set_color -b white black
      printf ""
  end

  # current directory

  set_color -b white black
  printf " %s" (prompt_pwd)

  # ruby version (via rbenv)

  if test $is_rbenv_enabled = 1
    set_color -b white black 
    printf "  %s" (rbenv version-name)
  end

  # git branch

  if test -d ./.git
    set_color -b white black
    printf "   %s" (git rev-parse --abbrev-ref HEAD)
  end

  # epilogue

  set_color -b white black
  printf " "
  set_color -b normal white
  printf " "

  set_color -b normal white
end
