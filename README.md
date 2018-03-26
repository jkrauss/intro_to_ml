# Introduction to machine learning

This repository contains a small introduction to machine learning using python, scikit-learn, tensorflow and pyplot. 
It starts with a quick introduction to key terms used in the field and then dives in a bit into supervised learning: classification, regression.
The repo comes with a dockerfile that you can use to built a docker-image that will have everything required to run. 

Steps to deploy:
1. Create a volume 'mlwork' for the docker-container e.g. under `/var/lib/docker/volumes/mlwork/_data`
2. Clone this repo into that location
3. `docker build -f /var/lib/docker/volumes/mlwork/_data/Dockerfile . -t jupyter/new-tensorflow-notebook`
4. Start the container:
`docker run -d -it --rm -p 8899:8888 -v mlwork:/home/jovyan/work jupyter/new-tensorflow-notebook start-notebook.sh --NotebookApp.token=''`

_Notice: This way of starting the container disables all security-mechanismns from jupyter-notebook. This is convenient but not secure, therefore only do it in an isolated environment!_
