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
    gf_safe_alias "rbl"  "rbenv local"
    gf_safe_alias "rbg"  "rbenv global"
    gf_safe_alias "rbs"  "rbenv shell"
    gf_safe_alias "rbi"  "rbenv install"
    gf_safe_alias "rbu"  "rbenv uninstall"
    gf_safe_alias "rbh"  "rbenv rehash"
    gf_safe_alias "rbv"  "rbenv version"
    gf_safe_alias "rbvn" "rbenv version-name"
    gf_safe_alias "rbvs" "rbenv versions"
    gf_safe_alias "rbw"  "rbenv which"
    gf_safe_alias "rbwh" "rbenv whence"
  end
end

rbenv_plugin_init
