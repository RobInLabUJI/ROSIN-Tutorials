![ROS Industrial Homepage](img/logo.jpg)
# Interactive Tutorials for ROS-Industrial

## Concepts and Fundamentals
* [Nodes, Topics, Services, and Parameters](Concepts/Fundamentals/index.ipynb)
* [Publisher and Subscriber in Python](Concepts/Topics/index.ipynb)

## Basic Applications
* [Server and Client in Python](Applications/Services/index.ipynb)
* [Simple Action Server and Client in Python](Applications/Actions/index.ipynb)

## Transform Library
* [Introduction to tf](Transform/Intro/index.ipynb)
* [Broadcaster and Listener in Python](Transform/Programming/index.ipynb)

<hr>

### Usage

1. Install [docker](https://www.docker.com/)

2. Clone this repository in your computer

3. Build the docker image:
```./docker_build.sh```

4. Run the docker image:
```./docker_run.sh```

5. Open this URL in your browser:
[http://localhost:8888/lab/tree/README.ipynb](http://localhost:8888/lab/tree/README.ipynb) (Windows users: you may need to replace `localhost` with `192.168.99.100` or any IP address assigned to your docker machine)

You can also try these tutorials in Binder:
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/RobInLabUJI/ROSIN-Tutorials/master?urlpath=lab/tree/README.ipynb)
