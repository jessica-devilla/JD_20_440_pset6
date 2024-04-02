## Overview

This repository contains the required code to reproduce one figure from my 440 final project which aims to examine the impact of the intratumoral microbiome on metastasis in colon adenocarcinoma. 

Using a dataset from The Cancer Genome Atlas (TCGA), Poore et al developed a pipeline to deconvulute microbial abundance signatures from WGS and ssRNAseq data from 32 cancer types. The focus of this work is to examine the role of microbial abundances in Colorectal Adenocarcinoma (COAD) across stage classification. The Poore et al. dataset contains 1017 cases of COAD across four stages. 

## Data
Poore GD, Kopylova E, Zhu Q, et al. Microbiome analyses of blood and tissues suggest cancer diagnostic approach. Nature. 2020;579(7800):567-574. doi:10.1038/s41586-020-2095-1
- https://ftp.microbio.me/pub/cancer_microbiome_analysis/TCGA/ 
- https://github.com/biocore/tcga

The data contained in the data folder of this repo represents the normailized microbial abudance measurements for a range of cancer types (Kraken-TCGA-Voom-SNM-Plate-Center-Filtering-Data.csv) and corresponding metadata (Metadata-TCGA-Kraken-17625-Samples.csv). This data has been run through a pipeline called Kraken to allow for microbial taxonomy identification and Voom-SNM, a normalization and decontamination process. The result is a csv with values for microbial abundance for each species


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

After cloning the repository, you may need to make the R script executable. Run the following command in the terminal from the root of the cloned repository:
```bash
chmod +x ./code/make_figure.R
```

To generate figures, run the following scrip using Git Bash.

```bash
Rscript code/make_figure.R
```
This script will load required packages, import and prepare the data from github, and perform exploratory analysis on the dataset to produce 1 figure. PCA is performed using the native stats package in R. 
Progress is be printed into the terminal as the script runs. The *.png files for Fig1a-d are output to the figures subfolder as below. 

Fig1A: a histogram of cases per stage classification determined by parsing the metadata

Fig1B: Scree plot showing variance explained by each principal component
Fig1C: PCA plot labeled by stage

Fig 1D: Biplot showing the loading vectors of the top 5 cocntributing variables
