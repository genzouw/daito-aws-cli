#!/bin/bash -u
set -e

script_dir_path=$(cd $(dirname ${BASH_SOURCE:-}); pwd)
cd "${script_dir_path}"

. ./config.sh

aws ec2 request-spot-instances \
	--spot-price 0.012 \
	--launch-specification """
	{
		\"ImageId\": \"${aws_image_id}\",
		\"KeyName\": \"${aws_key}\",
		\"InstanceType\": \"${aws_instance_type_m3_medium}\",
		\"SecurityGroups\": [ \"${aws_security_group}\" ]
	}
""" \
;
