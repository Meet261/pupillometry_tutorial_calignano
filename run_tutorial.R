# run_tutorial.R

# Clean the R environment
rm(list = ls())

# Install the required packages if they are not already installed
required_packages <- c("dplyr", "naniar", "plyr", "mgcv", "itsadug", "sjPlot")

# Install missing packages
installed_packages <- installed.packages()
for (pkg in required_packages) {
  if (!(pkg %in% installed_packages)) {
    install.packages(pkg)
  }
}

# Load the required libraries
library(dplyr)
library(naniar)
library(plyr)
library(mgcv)
library(itsadug)
library(sjPlot)

# Set working directory to the current directory
setwd(".")

# Ensure the dataset is downloaded
dataset_path <- "dataset_tutorial.csv"
if (!file.exists(dataset_path)) {
  download.file("https://osf.io/6ke4y/download", destfile = dataset_path)
}

# Source the original tutorial file
source("pupillometry_tutorial_calignano.R")
