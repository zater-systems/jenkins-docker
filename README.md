# Zater Systems Jenkins Docker #

## Commands ##

### Build ###

``` bash
$ docker build -t zater/jenkins .
```

### Run ###

``` bash
$ docker run -p 8080:8080 -v jenkins_home:/var/jenkins_home zater/jenkins
```
