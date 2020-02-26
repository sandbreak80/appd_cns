#!/bin/bash
nohup java -javaagent:/usr/local/appdynamics/appagent/javaagent.jar -jar ROOT.jar > bin/log.out 2>bin/log.err && tail -f /dev/null

