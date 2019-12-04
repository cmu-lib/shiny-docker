FROM rocker/shiny-verse:3.6.1

RUN R -e "install.packages(c('plotly'))"
RUN R -e "install.packages(c('dtplyr'))"
RUN R -e "install.packages(c('ggridges'))"
RUN R -e "install.packages(c('forcats'))"
RUN R -e "install.packages(c('GGally'))"
RUN R -e "install.packages(c('gridExtra'))"
RUN R -e "install.packages(c('ggrepel'))"
RUN R -e "install.packages(c('ggbeeswarm'))"
RUN R -e "install.packages(c('drake'))"
RUN R -e "install.packages(c('kableExtra'))"
RUN R -e "install.packages(c('cowplot'))"
RUN R -e "install.packages(c('shinyWidgets'))"
RUN R -e "install.packages(c('bookdown'))"
RUN R -e "install.packages(c('e1071'))"

COPY ./shiny-server.conf /etc/shiny-server/shiny-server.conf
COPY ./templates /etc/shiny-server/templates
RUN rm -rf /srv/shiny-server/*
# COPY ./apps /srv/shiny-server
