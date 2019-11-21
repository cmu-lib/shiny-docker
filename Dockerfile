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

COPY ./shiny-server.conf /etc/shiny-server/shiny-server.conf
COPY ./templates /etc/shiny-server/templates
