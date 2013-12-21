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

  if test $fish_rbenv = 1
    alias rbl  "rbenv local"
    alias rbg  "rbenv global"
    alias rbs  "rbenv shell"
    alias rbi  "rbenv install"
    alias rbu  "rbenv uninstall"
    alias rbh  "rbenv rehash"
    alias rbv  "rbenv version"
    alias rbvn "rbenv version-name"
    alias rbvs "rbenv versions"
    alias rbw  "rbenv which"
    alias rbwh "rbenv whence"
  end
end

rbenv_plugin_init
