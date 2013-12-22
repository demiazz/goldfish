#===== BUNDLER PLUGIN ==========================================================

function bundler_plugin_init
  gf_safe_alias "bi"  "bundle install"
  gf_safe_alias "bu"  "bundle update"
  gf_safe_alias "bp"  "bundle package"
  gf_safe_alias "be"  "bundle exec"
  gf_safe_alias "bcf" "bundle config"
  gf_safe_alias "bh"  "bundle help"
  gf_safe_alias "bck" "bundle check"
  gf_safe_alias "bl"  "bundle list"
  gf_safe_alias "bs"  "bundle show"
  gf_safe_alias "bod" "bundle outdated"
  gf_safe_alias "bc"  "bundle console"
  gf_safe_alias "bo"  "bundle open"
  gf_safe_alias "bi"  "bundle init"
  gf_safe_alias "bg"  "bundle gem"
  gf_safe_alias "bcl" "bundle clean"
end

bundler_plugin_init
