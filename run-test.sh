#!/bin/bash

echo "launching wrk for warmup: wrk -t2 -c100 -d30s -R1000 --latency"
wrk -t2 -c100 -d30s -R1000 --latency http://localhost:8080/ask/showall

echo "sleeping 5 seconds"
sleep 5

echo "launching wrk test: wrk -t2 -c100 -d120s -R2000 --latency"
wrk -t2 -c100 -d120s -R2000 --latency http://localhost:8080/ask/showall
