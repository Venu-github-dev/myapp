#! /bin/bash

# echo $PROJECT_VERSION
# PROJECT_VERSION=$(cat pom.xml | grep "version" | head -1 | awk '{print $1}' |  sed "s/<version>//" | sed "s/<.*//")
sed -i """s/PROJECTVERSION/${PROJECT_VERSION}/g""" kubernetes/deployment.yaml
kubectl apply -f kubernetes/deployment1.yaml
cat kubernetes/deployment1.yaml
# kubectl apply -f kubernetes/deployment.yaml

# cat kubernetes/deployment.yaml | awk "{gsub(/PROJECTVERSION/,${PROJECT_VERSION})}1"
