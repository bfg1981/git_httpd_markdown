#!/bin/bash
TAG_NAME=therealbfg/git_httpd_markdown
fname=$(mktemp)

docker build --pull . | tee $fname

TAG_ID=$(tail -n 1 $fname | rev | cut -d\  -f1 | rev)
rm $fname

docker tag $TAG_ID $TAG_NAME
echo Tagged $TAG_NAME
docker push $TAG_NAME
