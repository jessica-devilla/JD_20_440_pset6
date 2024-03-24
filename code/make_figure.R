
# Check if the package is already installed
if (!requireNamespace("readr", quietly = TRUE)) {
  # If not installed, install it
  install.packages("readr")
}

# Now load the library
library(readr)

### TEST IMPORT
# read csv files from data folder
#kraken_meta_path <- "C:\Users\jessn\Documents\MIT_G1\20_440\pset6\data\Kraken-TCGA-Voom-SNM-Plate-Center-Filtering-Data.csv"
# set path to csv files via directory
kraken_path <- "data/Kraken-TCGA-Voom-SNM-Plate-Center-Filtering-Data.csv"

#note these import methods do not import the data as in the csv
kraken_data <- read.csv(kraken_path)
#import by directly calling git hub url
kraken_data_git <- read.csv("https://media.githubusercontent.com/media/jessica-devilla/JD_20_440_pset6/main/data/Kraken-TCGA-Voom-SNM-Plate-Center-Filtering-Data.csv")

# IMPORT KRAKEN DATA FROM POORE ET AL
kraken_url <- "https://media.githubusercontent.com/media/jessica-devilla/JD_20_440_pset6/main/data/Kraken-TCGA-Voom-SNM-Plate-Center-Filtering-Data.csv"
kraken_data <- read_csv(url(kraken_url),col_types = cols(.default = col_character()))

# IMPORT KRAKEN METADATA FROM POORE ET AL
kraken_meta_url <- "https://media.githubusercontent.com/media/jessica-devilla/JD_20_440_pset6/main/data/Metadata-TCGA-Kraken-17625-Samples.csv"
kraken_metadata <-read_csv(url(kraken_meta_url),col_types = cols(.default = col_character()))
