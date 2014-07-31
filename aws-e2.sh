#!/bin/bash -u
set -e

. ./config.sh

aws ec2 run-instances \
	--image-id "${aws_image_id}" \
	--instance-type "${aws_instance_type_t2_small}" \
	--key-name "${aws_key}" \
	--security-groups "${aws_security_group}" \
	--region "${aws_region}" \
	--count 1 \
;

