# Zater Systems Jenkins Docker #

## Commands ##

### Build ###

``` bash
$ sudo docker build -t zater/jenkins .
```

### Run ###

``` bash
$ sudo docker run \
  --name jenkins \
  -p 8080:8080 \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -d \
  zater/jenkins
```
