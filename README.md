# docker-shiny

# Description

Repository to test Shiny App in docker container. This repository is created for investigation/educational purposes. Check out more in this [Udemy Course](https://www.udemy.com/course/docker-containers-data-science-reproducible-research/?referralCode=8CFCF7D8B36B99E28012)

# TDL

* Add user control to the server 
* Build shiny app as a package see https://www.r-bloggers.com/building-a-shiny-app-as-a-package/ and https://rtask.thinkr.fr/getting-started-with-golem/
* Video tutorial: https://shinydevseries.com/post/golem-demo/
* Example of the shiny app built with Golem: 
* start container with app trackback: docker run --rm -d -p 80:80 --name TRP vladdsm/docker-trackpack
* stop container with app: docker container stop TRP


# Contents

Repository contains:

1. Code for sample shiny application
2. Auxiliary files
3. Dockerfile that builds docker image
4. Executable Script `Run_Shiny_Mapped` to launch the container containing shiny server with mapped folder on local computer. PURPOSE: Develop App
5. Executable Script `Run_Shiny_Embedded` to launch the container containing shiny server with embedded demo shiny application. PURPOSE: Embed Apps for shipping into container

# How to use

## Note about Dockerfile

This Dockerfile is built on rocker/shiny image. Custom R packages are added on top. These packages are listed in the folder `02_code/install_packages.R`. 

## Add your app to the folder

It is possible to either map folder with locally stored shiny app or embed app into the image.

### Embed app to the image

Use the following lines in the Dockerfile to add your app:

`# Copy Shiny App files to the image
COPY testapp/app.R /srv/shiny-server/shinyapps/testapp/`

### Map locally available app

Change executable script `Run_Shiny_Mapped` to map local folder. Change code after key `-v ...:/srv/shiny-server/`

## Build this image

Use terminal to navigate to this directory and run the following code:

`docker build -t vladdsm/docker-shiny .`

## Run the container

1. Edit Executable script `Run_Shiny_Embedded` or `Run_Shiny_Mapped` by placing specific settings
2. Run executable script...

Alternatively execute this code in the terminal:

`docker run --rm -p 3838:3838 vladdsm/docker-shiny`

## Test application

Open the url: 0.0.0.0:3838 to see the app
Stop container by pressing `CTRL+C` in the active terminal window

# Development notes:

To be used with multi-container application:

* Plumber API
* This Shiny Server
* Shiny App

# Sources and examples

https://juanitorduz.github.io/dockerize-a-shinyapp/
https://www.bjoern-bos.de/post/learn-how-to-dockerize-a-shinyapp-in-7-steps/
