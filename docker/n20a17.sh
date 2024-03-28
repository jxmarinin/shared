# sudo docker run -it -u 1001:1001 -v $(pwd):/app -p 4200:4200 -p 49153:49153  n20a17 sh
# sudo docker run -u 1001:1001 -v ${PWD}:/app -w /app n20a17  sh -c chown -R 1001:1001 "/.npm" && ng new $1  --skip-git
sudo docker run -u 1001:1001 -v ${PWD}:/app -w /app n20a17    ls -al / && ng new $1  --skip-git 
