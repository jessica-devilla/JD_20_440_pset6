## Overview

This repository contains the required code to reproduce one figure from my 440 final project which aims to examin the impact of the intratumoral microbiome on metastasis in colon adenocarcinoma. 

## Data sources
Poore GD, Kopylova E, Zhu Q, et al. Microbiome analyses of blood and tissues suggest cancer diagnostic approach. Nature. 2020;579(7800):567-574. doi:10.1038/s41586-020-2095-1
- https://ftp.microbio.me/pub/cancer_microbiome_analysis/TCGA/ 
- https://github.com/biocore/tcga

Hermida LC, Gertz EM, Ruppin E. Predicting cancer prognosis and drug response from the tumor microbiome. Nat Commun. 2022;13(1):2896. doi:10.1038/s41467-022-30512-3
- https://zenodo.org/records/6471321
- https://github.com/ruppinlab/tcga-microbiome-prediction/tree/v1.2

## Prerequisites

This project was developed on a PC and assumes use of a Unix command line shell and R. Ensure that the R executable is added to environmental PATH variable in order to access Rscript from command line. For Windows, the default installation location for R is C:\Program Files\R\R-4.3.2\bin. 

## Running the code

```bash
git clone https://github.com/jessica-devilla/JD_20_440_pset6.git
```

After cloning the repository, you may need to make the R scripts executable. Run the following command in the terminal from the root of the cloned repository:
```bash
chmod +x ./code/make_figure.R
```

To generate figures, run the following code
```bash
Rscript code/make_figure.R
```

