# building customised docker image to use R Shiny Server

FROM rocker/shiny-verse:latest

LABEL maintainer='vladimir.zhbanko@gmail.com'

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## copy files
COPY 02_code/install_packages.R /install_packages.R

## install packages 
RUN Rscript /install_packages.R

#to run shiny server with demo capabilities
#docker run --rm -v /Users/vladdsm/shinyapps/:/srv/shiny-server -v /Users/vladdsm/shinylog/:/var/log/shiny-server -p 3838:3838 vladdsm/docker-shiny

