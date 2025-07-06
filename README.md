# Longevity Classification with XGBoost in R

## Overview

This project demonstrates the use of machine learning—specifically **XGBoost**—to classify aging status (young vs. old) based on **simulated gene expression data**. It serves as a reproducible and modular R-based pipeline for modeling longevity-related biological patterns. The workflow is designed to support research and prototyping in aging biology, biomarker discovery, and predictive healthspan analytics.

---

## Dataset and Tools

**Dataset:**  
Simulated expression data mimicking gene-level measurements from young and old subjects.

**Tools & Libraries:**  
- R (v4.3 or later)  
- CRAN packages:  
  - `xgboost`  
  - `caret`  
  - `Matrix`  
  - `ggplot2`

---

## Goals

- Simulate gene expression data for longevity-related classification  
- Train and evaluate a binary classification model using XGBoost  
- Visualize prediction results and feature importance  
- Provide a reproducible script for further adaptation with real datasets

---

## Repository Structure

```
longevity-classification-r/
├── longevity_ai_xgboost.R   # Standalone R script for full analysis
├── README.md                # Project overview and usage instructions
```

---

## Reproducibility Instructions

### 1. Install dependencies in R

```r
install.packages(c("xgboost", "caret", "Matrix", "ggplot2"))
```

### 2. Run the script

```r
source("longevity_ai_xgboost.R")
```

This will:

- Simulate a dataset with 1000 gene features for 200 samples  
- Train an XGBoost classifier on 80% of the data  
- Predict aging status on the remaining 20%  
- Output a confusion matrix and plot top 10 important features

---

## Outputs

- **Confusion matrix**: Classification accuracy and error breakdown  
- **Feature importance plot**: Top contributing genes to the model's predictions

---

## Key Findings

While based on simulated data, this project demonstrates that:

- Gene-level predictors can be used effectively to classify biological age groups  
- Machine learning tools like XGBoost are well-suited for high-dimensional genomics tasks  
- Feature importance plots help identify top-ranking predictors for further biological validation

---

## Purpose

This project was developed to demonstrate technical fluency in machine learning for aging research, as part of my application to relevant institutes working on aging.

---

## Author

**Maruf Hasan**  
*Interests: Aging biology | Bioinformatics | Healthspan modeling | Translational research*
