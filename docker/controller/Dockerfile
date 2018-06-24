FROM debian:stretch

# add scripts
ADD scripts/build.sh /tmp/build.sh

# add user
RUN bash -c "source /tmp/build.sh; add_user"

# install tools
RUN bash -c "source /tmp/build.sh; install_tools"

# install floodlight dependencies
RUN bash -c "source /tmp/build.sh; install_floodlight_dependencies"

# install floodlight
RUN bash -c "source /tmp/build.sh; install_floodlight_from_source"

# add start.sh
ADD scripts/start.sh /tmp/start.sh
