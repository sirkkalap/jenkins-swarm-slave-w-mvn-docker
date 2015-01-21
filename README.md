# jenkins-swarm-slave-w-mvn-docker

Dockerfile for running [maven](http://maven.apache.org) in
[Jenkins Swarm Slave](https://github.com/carlossg/jenkins-swarm-slave-docker).

## Usage

1. Build the image:

```bash
docker build -t sirkkalap/jenkins-swarm-slave-w-mvn .
```

2. Run swarm slave:

```bash
docker run --rm --link jenkins-master:jenkins \
sirkkalap/jenkins-swarm-slave-w-mvn:latest -username \
jenkins -password jenkins -executors 1
```
