#!/bin/bash
service mysql start > bin/log.out 2>bin/log.err && tail -f /dev/null

