FROM rocker/verse:latest

# install R packages
RUN install2.r corrplot ggpubr psy MatchIt tableone pROC cobalt icd DBI MonetDBLite \
	       geosphere rgeos rgdal maptools ggmap Hmisc

# and those from github
RUN  Rscript -e 'devtools::install_github("IM-APHP/pmeasyr")' \
   &&Rscript -e 'devtools::install_github("AdrienLeGuillou/descriptor")'

# copy rstudio server user settings
RUN mkdir -p /home/rstudio/.rstudio/monitored/user-settings
ADD user-settings /home/rstudio/.rstudio/monitored/user-settings/
RUN chown -R rstudio:rstudio /home/rstudio/.rstudio
