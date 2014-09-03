#!/bin/bash -u

aws_account="daito"
aws_key="aws_${aws_account}_key"
aws_security_group="aws_${aws_account}_security_group"
aws_region="ap-northeast-1"
aws_spot_price="0.011"

aws_image_id="ami-81294380"
aws_instance_type_m3_medium="m3.medium"
