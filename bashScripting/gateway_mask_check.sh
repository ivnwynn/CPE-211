#!/bin/bash



netstat -r | grep -iv "gateway" | awk '{print $0}'
netstat -r | grep -iv "default" | awk '{print $0}'
