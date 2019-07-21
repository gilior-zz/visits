# base image
from node:alpine
# set /usr/app as folder inside container to receive out files
workdir /app
#copy only pacakges.json file so npm i run only if there was a change to pacakges.json
#copy packages.json .
# install deps
copy . .
run npm install
#copy files to container (so pacakges.json is presents)

# defult cmds
cmd ["npm","start"]