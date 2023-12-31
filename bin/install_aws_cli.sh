#!/usr/bin/bash
cd /workspace

if [[ -d "./aws" ]]; then
    rm -r ./aws
    echo "awscliv2.zip Removed"
fi

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --update

echo "Lets see if AWS CLI is working:"
aws sts get-caller-identity

cd $PROJECT_ROOT
