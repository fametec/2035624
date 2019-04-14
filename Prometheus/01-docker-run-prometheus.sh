#!/bin/bash

docker run -d --name prometheus -p 9090:9090 --volume ./prometheus:/etc/prometheus prom/prometheus


docker logs -f prometheus
