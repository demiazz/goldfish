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

# Bind alias only if not exists bin with alias name.
function gf_safe_alias
  if not which $argv[1]
    alias $argv[1] $argv[2]
  end
end
