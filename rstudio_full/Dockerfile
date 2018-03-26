FROM rocker/verse

RUN install2.r corrplot ggpubr psy MatchIt tableone pROC cobalt

RUN mkdir -p /home/rstudio/.rstudio/monitored/user-settings
ADD user-settings /home/rstudio/.rstudio/monitored/user-settings/
RUN chown -R rstudio:rstudio /home/rstudio/.rstudio
