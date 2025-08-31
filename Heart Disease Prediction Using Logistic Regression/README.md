# Heart Disease Prediction

## Overview of Problem Statement
Heart disease remains one of the leading causes of mortality worldwide. Early detection through predictive modeling can significantly reduce risks by enabling timely medical interventions. The project aims to apply data science and machine learning techniques to predict whether a patient is at risk of developing heart disease based on clinical and lifestyle factors.

## Objective
- Perform **Exploratory Data Analysis (EDA)** to understand patterns, distributions, and correlations.  
- Preprocess the data: handle **missing values**, detect/treat **outliers**, and apply **feature scaling/encoding**.  
- Address **class imbalance** using techniques like `class_weight='balanced'`.  
- Train and compare multiple **classification algorithms**.  
- Evaluate models with appropriate metrics (accuracy, confusion matrix, classification report).

## Dataset
- Source: **Framingham Heart Study dataset** (`framingham.csv`).  
- Features include:  
  - **Demographic**: age, gender, education  
  - **Behavioral**: smoking habits  
  - **Clinical**: cholesterol, blood pressure, BMI, diabetes, heart rate  
- Target variable: **TenYearCHD** (1 = risk of heart disease, 0 = no risk).

## Methodology
1. **Data Import & Inspection** – Loaded dataset, checked structure and datatypes.  
2. **Data Preprocessing** – Missing values imputed, outliers detected, scaling and encoding applied.  
3. **Exploratory Data Analysis (EDA)** – Distribution plots, boxplots, correlation heatmaps, feature relationships.  
4. **Modeling** – Logistic Regression, Decision Tree, Random Forest, and other classifiers.  
5. **Evaluation** – Accuracy, confusion matrix, classification report.  

## Exploratory Data Analysis (EDA)
- Age and cholesterol showed strong correlations with heart disease.  
- Smoking and diabetes were important risk factors.  
- Outliers were detected in cholesterol and blood pressure.  
- Dataset was **imbalanced**, with fewer positive cases.  

## Modeling
- Models built: Logistic Regression, Decision Tree, Random Forest.  
- Logistic Regression provided baseline accuracy.  
- Random Forest achieved higher predictive performance.  

## Results
- **Logistic Regression**: Moderate accuracy, interpretable.  
- **Random Forest**: Better recall and accuracy.  
- Important predictors: **age, smoking, cholesterol, blood pressure, diabetes**.  

## Limitations
- Dataset imbalance affects sensitivity to positive cases.  
- Limited features (no lifestyle/genetic data).  
- Possible data quality issues due to missing values and outliers.  
- Results may not generalize beyond the study population.  

## Conclusion
Machine learning models can predict the risk of heart disease with reasonable accuracy. Ensemble methods such as Random Forest outperformed simpler models, highlighting the importance of considering feature interactions.

## Future Work
- Use advanced resampling techniques (SMOTE, ADASYN).  
- Try Gradient Boosting, XGBoost, Neural Networks.  
- Add more lifestyle, genetic, and medical history features.  
- Perform hyperparameter tuning for optimization.  
- Deploy as a healthcare web application for real-world use.  
