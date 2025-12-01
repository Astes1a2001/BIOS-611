# BIOS 611 project Docker image
FROM rocker/rstudio:4.4.1

# System deps used by some R packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libxt-dev \
  && rm -rf /var/lib/apt/lists/*

# R packages needed by report.Rmd
RUN R -e "install.packages( \
  c('tidyverse',      \
    'FactoMineR',    \
    'factoextra',    \
    'DescTools',     \
    'logistf',       \
    'recipes',       \
    'caret',         \
    'xgboost',       \
    'pROC',          \
    'ROCR'),         \
  repos = 'https://cloud.r-project.org')"

# Default working directory that you'll mount your repo into
WORKDIR /home/rstudio/project
