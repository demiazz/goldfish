#===== BUNDLER PLUGIN ==========================================================
#
# Originally: bundler plugin for Oh My Fish project

function __is_bundler_installed
  which bundle > /dev/null ^&1
end

function __is_project_bundled
  set -l check_dir $PWD

  while [ $check_dir != "/" ]
    test -f "$check_dir/Gemfile"; and return
    set check_dir (dirname $check_dir)
  end

  false
end

function __run_with_bundler
  if begin; __is_bundler_installed; and __is_project_bundled; end
    command bundle exec $argv
  else
    eval command $argv
  end
end

function bundler_plugin_init
  if set -q bundler_wrap
    for cmd in $bundler_wrap
      eval "function $cmd; __run_with_bundler $cmd \$argv; end"
    end
  end
end

bundler_plugin_init
