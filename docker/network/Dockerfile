FROM debian:stretch

# add build scripts
ADD scripts/build.sh /tmp/build.sh

# add user
RUN bash -c "source /tmp/build.sh; add_user"

# install tools
RUN bash -c "source /tmp/build.sh; install_tools"

# install mininet
RUN bash -c "source /tmp/build.sh; install_mininet_from_repo"

# add start.sh
ADD scripts/start.sh /tmp/start.sh
