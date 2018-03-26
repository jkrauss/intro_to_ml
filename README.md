# Introduction to machine learning

This repository contains a small introduction to machine learning using python, scikit-learn, tensorflow and pyplot. 
It starts with a quick introduction to key terms used in the field and then dives in a bit into supervised learning: classification, regression.
The repo comes with a dockerfile that you can use to built a docker-image that will have everything required to run. 

Steps to deploy:
1. git pull this repo, cd into the directory
2. Create a volume 'mlwork' for the docker-container `docker volume create mlwork`
3. Build the image ..might take a while.. `docker build -f Dockerfile . -t jupyter/new-tensorflow-notebook`
4. Start the container:
`docker run --name="intro_to_ml" -d -it --rm -p 8899:8888 -v mlwork:/home/jovyan/work jupyter/new-tensorflow-notebook start-notebook.sh --NotebookApp.token=''`
5. copy repo into the container's volume `docker cp . intro_to_ml:/home/jovyan/work`
6. access the jupyter-notebook under http://localhost:8899

_Notice: This way of starting the container disables all security-mechanisms from jupyter-notebook. This is convenient but not secure, therefore only do it in an isolated environment!_
