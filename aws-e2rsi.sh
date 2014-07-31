#!/bin/bash -u
set -e

. ./config.sh

aws ec2rsi
	--ami_id ami-d13845e1 \
	--price 0.012 \
	--instance-count 1 \
	--instance-type m3.medium \
	--key "${aws_key}" \
	--group "${aws_security_group}" \
	--region "${aws_region}" \
;

