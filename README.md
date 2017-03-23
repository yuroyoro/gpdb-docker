# gpdb-docker

Pivotal Greenplum Database Base Docker Image (4.3.7.1)

[The offical GreenPlum docker image](https://hub.docker.com/r/pivotaldata/gpdb-base/) is terrible becasue it run bash intaractive shell on container started for waiting connection.
Then this container immediately exit without `-i` option with `docker run`. so it could not be used as service by docker-compose etc..

This image run `tail -f` for container waiting instead of bash run.
