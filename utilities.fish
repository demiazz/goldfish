#===== UTILITIES ===============================================================

# Appends the path to the specified path list. If no list specified,
# defaults to $PATH.
function gf_append_path
  set -l path PATH

  if test (echo $argv | wc -w) -eq 2
    set path $argv[2]
  end

  if test -d $argv[1]; and not contains $argv[1] $$path
    set $path $argv[1] $$path
  end
end

# Enable completion for aliased commands.
function gf_alias_completion --argument alias command
    alias $alias $command

    complete -c $alias -xa "(
        set -l cmd (commandline -pc | sed -e 's/^ *\S\+ *//' );
        complete -C\"$command \$cmd\";
    )"
end
