# Project_Pipeline

This *R* pipeline is a shiny app which can forecast some points of a dataset made of solar measurements.

### Notes

- This pipeline will use some libraries from CRAN, and one additional library from the following Github repository: https://github.com/Mawen67/mySolarPackage.

- The plots can take several seconds to appear. The forecast result is not efficient and is just here as a support.

### Running the pipeline

1. Clone this repository

```
git clone git@github.com:Mawen67/Project_Pipeline.git
```

2. Open a console in Rstudio OR run the following command in your terminal

```
r
```

3. Install all the required libraries from the renv

```
renv::restore()
```

4. Run the Shiny App in R

```
shiny::runApp(".")
```
