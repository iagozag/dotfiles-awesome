function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

#run thunar --daemon
run picom -b
run /usr/lib/xfce-polkit/xfce-polkit

#enviroment variables
export BROWSER=/usr/bin/firefox
