#!/bin/bash
# Push docker image to docker hub registry

# docker login
echo "Logging into Docker Hub"

docker login -u $Docker_UserName -p $Docker_Password

#    docker tag capstoneimg vikramsrinivasan08/prod
#    docker images
#    docker push vikramsrinivasan08/prod


echo "Value=$GIT_BRANCH"
if [[ $GIT_BRANCH == "origin/master" ]]; then
docker tag capstoneimg vikramsrinivasan08/prod:v1
docker push vikramsrinivasan08/prod:v1
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
docker tag capstoneimg vikramsrinivasan08/dev:v2
docker push vikramsrinivasan08/dev:v2
fi
