#!/bin/sh
mvn clean package && docker build -t com.paul/WebAppDemo .
docker rm -f WebAppDemo || true && docker run -d -p 9080:9080 -p 9443:9443 --name WebAppDemo com.paul/WebAppDemo