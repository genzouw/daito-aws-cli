#!/bin/bash -u

aws_account="genzouw"
aws_key="aws_${aws_account}_key"
aws_security_group="aws_${aws_account}_security_group"
aws_region="us-west-2c"

# amazon linux
# aws_spot_price="0.011"
# aws_image_id="ami-f45beff5"

# windows
aws_image_id="ami-73cd8843"
aws_spot_price="0.08"

aws_instance_type_m3_medium="m3.medium"

# [ ! -d .config/ ] && mkdir -p .config/
