#!/bin/bash
#Author:Muhamamd Latif

APPLICATION="django-app"
ENVIRONMENT="sampledjango-env"

cd sampledjango 

echo -e "\ncreating Elasticbeanstalk Sample Django Application\n"
eb init -p python-3.6 $APPLICATION

echo -e "\ncreating Elasticbeanstalk sample Django Environment\n"
eb create $ENVIRONMENT

echo -e "\nDeploying and uploading Django project to s3 and EB \n"
eb deploy


echo -e "\nOpening the link-URL \n"

eb open

