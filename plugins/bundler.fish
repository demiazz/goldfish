#===== BUNDLER PLUGIN ==========================================================

function bundler_plugin_init
  alias bi  "bundle install"
  alias bu  "bundle update"
  alias bp  "bundle package"
  alias be  "bundle exec"
  alias bcf "bundle config"
  alias bh  "bundle help"
  alias bck "bundle check"
  alias bl  "bundle list"
  alias bs  "bundle show"
  alias bod "bundle outdated"
  alias bc  "bundle console"
  alias bo  "bundle open"
  alias bi  "bundle init"
  alias bg  "bundle gem"
  alias bcl "bundle clean"
end

bundler_plugin_init
