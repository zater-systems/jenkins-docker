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
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
  -d \
  zater/jenkins
```
