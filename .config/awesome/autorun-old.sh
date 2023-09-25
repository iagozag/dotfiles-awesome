function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run thunar --daemon
run /usr/lib/xfce-polkit/xfce-polkit