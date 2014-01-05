if not set -q check_for_updates_period
  set -g check_for_updates_period 7
end

function _current_epoch
  echo (math (date +%s) / 60 / 60 / 24)
end

function _last_update_check
  echo "set -g last_update_check "(_current_epoch) > $goldfish_path/.last_update_check
end

function _upgrade
  cd $goldfish_path
  echo (git pull --rebase --stat origin master)
  _last_update_check
end

function check_for_update
  if test -e $goldfish_path/.last_update_check
    . $goldfish_path/.last_update_check
    set -l update_diff (math (_current_epoch) - $last_update_check)
    if [ $update_diff -gt $check_for_updates_period ]
      echo checking for update...
      _upgrade
      cd
    end
  else
    _last_update_check
  end
end
