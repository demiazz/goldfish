#===== DEFAULT VARIABLES =======================================================

set -l __bundler_wrap annotate cap capify cucumber foreman guard middleman \
                      nanoc rackup rainbows rake rspec ruby shotgun sidekiq \
                      spec spinach spork thin thor unicorn unicorn_rails \
                      teaspoon rails

#===== UTILITIES ===============================================================

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

function __wrap_with_bundler -a cmd
  eval "function $cmd; __run_with_bundler $cmd \$argv; end"
end

#===== INITIALIZATION ==========================================================

for cmd in $__bundler_wrap
  __wrap_with_bundler $cmd
end

if set -q bundler_wrap
  for cmd in $bundler_wrap
    if not contains $cmd $__bundler_wrap
      __wrap_with_bundler $cmd
    end
  end
end
