# Parkinson's Disease Prediction

## Overview of Problem Statement
Parkinson’s disease is a progressive neurological disorder affecting movement, speech, and overall motor functions. Early detection is crucial for effective intervention and improving patient quality of life. The aim of this project is to develop machine learning models to predict whether a patient has Parkinson’s disease based on biomedical voice measurements and clinical indicators.

## Objective
- Perform **Exploratory Data Analysis (EDA)** to understand data distributions and feature relationships.  
- Preprocess the dataset (handle missing values, duplicates, scaling, encoding).  
- Apply **feature selection** and **dimensionality reduction** techniques (RFE, Variance Threshold, PCA).  
- Train and compare classification algorithms.  
- Evaluate models using accuracy, confusion matrix, and classification report.  

## Dataset
- File: `parkinson_disease.csv`  
- Features include:  
  - **Demographic**: age, gender  
  - **Voice Measures**: jitter, shimmer, HNR, etc.  
  - **Other biomedical indicators**  
- Target variable: `class` (1 = Parkinson’s, 0 = Healthy).  

## Methodology
1. **Data Import & Cleaning** – Checked structure, nulls, and duplicates.  
2. **EDA** – Distribution plots, count plots, correlation heatmaps.  
3. **Feature Engineering** – RFE, Variance Threshold, PCA.  
4. **Modeling** – Logistic Regression, Random Forest Classifier.  
5. **Evaluation** – Accuracy, classification report, confusion matrix.  

## Exploratory Data Analysis (EDA)
- Class distribution showed dataset balance.  
- Gender distribution explored male vs female.  
- Strong correlations found among voice-related features.  
- Parkinson’s patients showed unique voice feature patterns.  

## Modeling
- **Logistic Regression** – Baseline performance.  
- **Random Forest** – Higher accuracy, robust feature handling.  
- **PCA** reduced dimensionality and improved efficiency.  

## Results
- Logistic Regression: Moderate accuracy.  
- Random Forest: Better accuracy and F1-score.  
- Important predictors: **jitter, shimmer, HNR**.  

## Limitations
- Small dataset size may affect generalization.  
- Gender imbalance may bias results.  
- Limited features (only voice-related, no lifestyle/genetics).  
- Risk of overfitting in Random Forest without hyperparameter tuning.  

## Conclusion
Machine learning models can predict Parkinson’s disease with good accuracy using biomedical voice data. Random Forest outperformed Logistic Regression, highlighting the importance of nonlinear feature relationships.  

## Future Work
- Apply Gradient Boosting, XGBoost, or Neural Networks.  
- Use SMOTE/ADASYN for class balancing.  
- Add more diverse features (genetics, lifestyle, clinical tests).  
- Perform hyperparameter tuning.  
- Deploy as an interactive healthcare screening tool.  
