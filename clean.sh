#!/bin/bash
PROJECT='montara-assignment'
aws s3 rm s3://$PROJECT --recursive
aws cloudformation delete-stack --stack-name $PROJECT