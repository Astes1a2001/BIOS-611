
FROM rocker/rstudio:4.4.1

RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libxt-dev \
  && rm -rf /var/lib/apt/lists/*

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

WORKDIR /home/rstudio/project
