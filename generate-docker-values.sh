#!/bin/bash
AWS_ACCOUNT=223851549868
AWS_REGION=eu-west-1
kubectl create secret docker-registry awsecr \
  --namespace $NAMESPACE \
  --docker-server=${AWS_ACCOUNT}.dkr.ecr.${AWS_REGION}.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password)
