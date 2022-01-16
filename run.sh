#!/bin/bash
docker run \
	-d --rm \
	--name ragemp \
	-p 22005:22005/udp \
	-p 22006:22006 \
	ragemp
