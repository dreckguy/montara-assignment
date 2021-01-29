#!/bin/bash
aws cloudformation deploy --stack-name montara-assignment --template-file template.yaml
aws s3 cp index.html s3://montara-assignment --acl public-read
