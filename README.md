## Overview

This repository contains the required code to reproduce one figure from my 440 final project which aims to examine the impact of the intratumoral microbiome on metastasis in colon adenocarcinoma. 

## Data
Poore GD, Kopylova E, Zhu Q, et al. Microbiome analyses of blood and tissues suggest cancer diagnostic approach. Nature. 2020;579(7800):567-574. doi:10.1038/s41586-020-2095-1
- https://ftp.microbio.me/pub/cancer_microbiome_analysis/TCGA/ 
- https://github.com/biocore/tcga

Hermida LC, Gertz EM, Ruppin E. Predicting cancer prognosis and drug response from the tumor microbiome. Nat Commun. 2022;13(1):2896. doi:10.1038/s41467-022-30512-3
- https://zenodo.org/records/6471321
- https://github.com/ruppinlab/tcga-microbiome-prediction/tree/v1.2

## Folder Structure

```
JD_20_440_pset6/
|__ README.md							
|__ code/				
|__ data/						
|__ figures/
```

Raw data files downloaded from Poore et al are located in data/. The code used to generate the figure (make_figure.R) is located in code/. The figure files are output to figures/. 

## Installation

### Prerequisites

This project was developed on a Windows machine. It assumes use of a Unix command line shell and R. Before running, ensure that the Rscript executable is added to environmental PATH variable in order to allow access to Rscript from the command line. For Windows, the default installation location for R is C:\Program Files\R\R-4.3.2\bin. Package dependencies can be found in requirements.txt. Necessary packages will be installed and loaded in the main script: make_figures.R.

### Running the code

Clone the github repository into desired directory using Git Bash. 

```bash
git clone https://github.com/jessica-devilla/JD_20_440_pset6.git
```

After cloning the repository, you may need to make the R scripts executable. Run the following command in the terminal from the root of the cloned repository:
```bash
chmod +x ./code/make_figure.R
```

To generate figures, run the following scrip using Git Bash.
```bash
Rscript code/make_figure.R
```
This script will load required packages, import data, and perform exploratory analysis on the dataset to produce 1 figure. Progress will be printed into the terminal as the script runs. The *.png files for Fig1a-d will be output to the figures subfolder. 

