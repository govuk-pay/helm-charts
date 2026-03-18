#!/bin/bash
cat <<EOF > values/pay-app/values.docker.yaml
dockerPassword: $(aws ecr get-login-password)
EOF