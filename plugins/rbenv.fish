#===== INITIALIZATION ==========================================================

set -g is_rbenv_enabled 0

if test -n "$RBENV_ROOT"
  set rbenv_bin_path   $RBENV_ROOT/bin
  set rbenv_shims_path $RBENV_ROOT/shims
else
  set rbenv_bin_path   $HOME/.rbenv/bin
  set rbenv_shims_path $HOME/.rbenv/shims
end

if test -e $rbenv_bin_path/rbenv
  set -g is_rbenv_enabled 1

  gf_append_path $rbenv_bin_path
  gf_append_path $rbenv_shims_path
end
