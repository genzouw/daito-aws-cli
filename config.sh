#!/bin/bash -u

aws_account="daito"
aws_key="aws_${aws_account}_key"
aws_security_group="aws_${aws_account}_security_group"
aws_region="us-west-2c"
aws_spot_price="0.009"

aws_image_id="ami-d13845e1"
aws_instance_type_t2_small="t2.small"
aws_instance_type_m3_medium="m3.medium"
