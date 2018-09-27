FROM ros:melodic-ros-base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-melodic-ros-tutorials=0.9.0-0bionic.20180906.231139 \
    ros-melodic-common-tutorials=0.1.11-0bionic.20180907.001526 \
    python-pip=9.0.1-2.3~ubuntu1 \
	python3-pip=9.0.1-2.3~ubuntu1 \
    xvfb=2:1.19.6-1ubuntu4 \
	x11-apps=7.7+6ubuntu1 \
	netpbm=2:10.0-15.3build1 \
    && rm -rf /var/lib/apt/lists/

RUN pip3 install \
	jupyterlab==0.34.12 \
	bash_kernel==0.7.1

RUN python3 -m bash_kernel.install

RUN pip install \
  ipykernel==4.9.0 \
  ipython==5.8.0 \
  matplotlib==2.2.3

RUN python -m ipykernel install

ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}
WORKDIR ${HOME}

CMD ["jupyter", "lab", "--no-browser", "--ip", "0.0.0.0"]
