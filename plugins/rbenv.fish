#===== RBENV PLUGIN ============================================================

function rbenv_plugin_init
  set -g fish_rbenv 0

  if test -n "$RBENV_ROOT"
    set -g fish_rbenv_bin_path   $RBENV_ROOT/bin
    set -g fish_rbenv_shims_path $RBENV_ROOT/shims
  else
    set -g fish_rbenv_bin_path   $HOME/.rbenv/bin
    set -g fish_rbenv_shims_path $HOME/.rbenv/shims
  end

  if test -e $fish_rbenv_bin_path/rbenv
    set -g fish_rbenv 1

    gf_append_path $fish_rbenv_bin_path
    gf_append_path $fish_rbenv_shims_path
  end
end

rbenv_plugin_init
