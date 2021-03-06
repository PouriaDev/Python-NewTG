#!/usr/bin/env bash

install() {
	  cd tg
		sudo add-apt-repository ppa:ubuntu-toolchain-r/test
		sudo apt-get install g++-4.7 c++-4.7
		sudo apt-get update		
    sudo apt-get upgrade
		sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
		sudo apt-get install lua-lgi
		sudo apt-get install libnotify-dev
		sudo apt-get install screen
		sudo apt-get install tmux
		wget https://valtman.name/files/telegram-cli-1222
		chmod +x telegram-cli-1222
		cd ..
		chmod +x bot
		chmod +x tg
}

if [ "$1" = "install" ]; then
  install
  else

if [ ! -f ./tg/telegram-cli-1222 ]; then
    echo "Tg Not Found"
    echo "Run $0 install"
    exit 1
fi

   ./tg/telegram-cli-1222 -s ./bot/bot.py $@
fi
