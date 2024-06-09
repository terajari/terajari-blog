#!/bin/bash

rm -rf public

hugo

git add .

commit_message=$1

git commit -m "$commit_message"

git push origin main
