#Use a base node image
FROM node:7-onbuild

# Setting a maintainer
LABEL maintainer "micro@getintodevops.com"

# Set a health check
HEALTHCHECK --interval=5s \
	    --timeout=5s \
	    CMD curl -f https://127.0.0.1:8000 || exit 1

# Tell docker which port to expose
EXPOSE 8000

#Additionally, our image inherits the following actions from the official node onbuild image:

#Copy all files in the current directory to /usr/src/app inside the image
#Run npm install to install any dependencies for app (if we had any)
#Specify npm start as the command Docker runs when the container starts	

