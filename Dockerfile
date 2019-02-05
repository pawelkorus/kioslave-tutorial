FROM kdeneon/plasma:user-lts

USER root

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install -y --no-install-recommends \
    cmake cmake-curses-gui \
    less vim strace qtcreator valgrind gdb \
	make qt5-default \
	g++ gettext \
	extra-cmake-modules \
	libkf5kio-dev

USER neon

CMD ["/bin/bash", "-l"]

