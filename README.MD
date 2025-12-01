**BIOS 611 Final Project — Thyroid Cancer Recurrence Study**

**Overview**

This project analyzes clinical predictors of thyroid cancer recurrence using statistical methods (Firth logistic regression) and machine-learning methods (XGBoost).
The final report is generated from report.Rmd.

**Repo layout:**
```
BIOS-611/
├── Dockerfile
├── Makefile
├── README.md
├── .gitignore
├── report.Rmd
└── data/
    └── Thyroid_Diff.csv
```

**Data:**

The analysis uses a single dataset: data/Thyroid_Diff.csv

**Build & Run With Docker:**

1. Clone the repository git clone https://github.com/Astes1a2001/BIOS-611

``` cd BIOS-611 ```

2. Build the image

``` docker build . -t ruochen ```

3. Run the container

```
docker run --rm -p 8787:8787 -e PASSWORD=rstudio -v $(pwd):/home/rstudio/project bios611project
```

Open a browser and go to: http://localhost:8787


Log in with: 

```
username: rstudio
password: rstudio
```

**Generate the Report:**

Inside RStudio terminal:

```
cd /home/rstudio/project
make report.html
```

The report file will appear in the project directory.

**Developer Notes:**

The project is organized using a Makefile.

Targets include:

```
make report.html   # build HTML report
make clean         # remove build artifacts
```

All code is contained within report.Rmd.

The Dockerfile installs all required R packages so the project is fully reproducible. The repo uses .gitignore to avoid committing build products, R history files, and other local artifacts.

























