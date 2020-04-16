# docker-shiny

# Description

Repository to test Shiny App in docker container. This repository is created for investigation/educational purposes. Check out more in this [Udemy Course](https://www.udemy.com/course/docker-containers-data-science-reproducible-research/?referralCode=8CFCF7D8B36B99E28012)

# Contents

Repository contains:

1. Code for sample shiny application
2. Auxiliary files
3. Dockerfile that builds docker image
4. Executable Script `Run_Shiny` to launch the container containing shiny server with demo shiny application

# How to use

## Note about Dockerfile

This Dockerfile is built on rocker/shiny image. Custom R packages are added on top. These packages are listed in the folder `02_code/install_packages.R`. 

## Build this image

Use terminal to navigate to this directory and run the following code:

`docker build -t vladdsm/docker-shiny .`

## Run the container

1. Edit Executable script `Run_Shiny` by placing specific settings
2. Run executable script...

## Test application

Open the url: ...

# Development notes:

To be used with multi-container application:

* Plumber API
* This Shiny Server
* Shiny App

# Sources and examples

https://juanitorduz.github.io/dockerize-a-shinyapp/
https://www.bjoern-bos.de/post/learn-how-to-dockerize-a-shinyapp-in-7-steps/
