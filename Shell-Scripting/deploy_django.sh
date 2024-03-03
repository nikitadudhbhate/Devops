#!/bin/bash

<<task 
   Deplot a Django app and handle the code for errors
task

code_clone(){
	echo "cloning the app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){

        echo "Installing required packages"
    # Install Docker using official installation script
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    # Install Docker Compose
    sudo apt-get install nginx -y
    
	
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
        sudo systemctl restart docker
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "---------DEPLOYMENT STARTED---------------------------------"
if ! code_clone; then
	echo "the codedirectory already exists "
	cd django-notes-app
fi

if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi

deploy

echo "----------DEPLOYMENT DONE ---------------------------"

