#!/bin/bash
PROJECT='montara-assignment'
aws cloudformation deploy --stack-name $PROJECT --template-file template.yaml
aws s3 cp index.html s3://$PROJECT --acl public-read
aws cloudformation describe-stacks --stack-name $PROJECT --query Stacks[0].Outputs --output table