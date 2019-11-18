FROM rocker/shiny-verse

RUN R -e "install.packages(c('shinythemes'))"
RUN R -e "install.packages(c('future'))"
