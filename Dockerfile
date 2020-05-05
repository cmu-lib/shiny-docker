FROM rocker/shiny-verse:latest

RUN R -e "install.packages(c('plotly'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('dtplyr'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('ggridges'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('forcats'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('GGally'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('gridExtra'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('ggrepel'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('ggbeeswarm'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('drake'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('kableExtra'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('cowplot'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('shinyWidgets'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('bookdown'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('e1071'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('quanteda'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('tidytext'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('shinydashboard'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('htmlwidgets'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('sparkline'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('DT'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('openxlsx'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('patchwork'), repos = 'https://cloud.r-project.org')"
RUN R -e "devtools::install_github('krassowski/complex-upset')"
RUN R -e "install.packages(c('renv'), repos = 'https://cloud.r-project.org')"
RUN R -e "install.packages(c('topicmodels'), repos = 'https://cloud.r-project.org')"

COPY ./shiny-server.conf /etc/shiny-server/shiny-server.conf
COPY ./templates /etc/shiny-server/templates
RUN rm -rf /srv/shiny-server/*
# COPY ./apps /srv/shiny-server
