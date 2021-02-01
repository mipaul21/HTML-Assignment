@echo off
call mvn clean package
call docker build -t com.paul/WebAppDemo .
call docker rm -f WebAppDemo
call docker run -d -p 9080:9080 -p 9443:9443 --name WebAppDemo com.paul/WebAppDemo