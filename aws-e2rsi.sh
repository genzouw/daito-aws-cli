#!/bin/bash -u
set -e

. ./config.sh

aws ec2 request-spot-instances \
	--spot-price 0.012 \
	--launch-group "${aws_security_group}", \
	--launch-specification """
	{
		\"ImageId\": \"${aws_image_id}\",
		\"KeyName\": \"${aws_key}\",
		\"InstanceType\": \"${aws_instance_type_m3_medium}\"
	}
""" \
;
