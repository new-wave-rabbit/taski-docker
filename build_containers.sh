#!/bin/bash
docjer_user=dotsenkois
dirs=( frontend backend gateway )

for dir in ${dirs[*]}; do
docker build -t $docjer_user/taski_$dir ./$dir --no-cache
docker push $docjer_user/taski_frontend
done
