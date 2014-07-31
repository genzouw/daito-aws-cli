#!/bin/bash -u
set -e

. ./config.sh

aws ec2 run-instances \
	--image-id ami-d13845e1 \
	--instance-type t2.small \
	--count 1 \
	--key-name "${aws_key}" \
	--security-groups "${aws_security_group}" \
	--region "${aws_region}" \
;

