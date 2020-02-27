#!/bin/bash
nohup java -jar ROOT.jar > bin/log.out 2>bin/log.err && tail -f /dev/null

