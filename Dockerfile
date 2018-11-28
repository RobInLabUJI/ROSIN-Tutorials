FROM roslab/roslab:melodic

USER root

RUN apt-get update \
 && apt-get install -yq --no-install-recommends \
    ros-melodic-ros-tutorials \
    ros-melodic-common-tutorials \
    ros-melodic-tf2 \
    ros-melodic-tf2-tools \
    ros-melodic-tf2-ros \
    ros-melodic-tf-conversions \
    ros-melodic-turtle-tf2 \
    xvfb=2:1.19.6-1ubuntu4 \
    x11-apps=7.7+6ubuntu1 \
    netpbm=2:10.0-15.3build1 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY . ${HOME}

RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}
WORKDIR ${HOME}
