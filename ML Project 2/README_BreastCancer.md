# Breast Cancer Diagnosis Prediction

## 📑 Table of Contents

1.  Overview of Problem Statement\
2.  Objective\
3.  Dataset\
4.  Methodology\
5.  Exploratory Data Analysis (EDA)\
6.  Data Preprocessing\
7.  Modeling\
8.  Results\
9.  Limitations\
10. Conclusion\
11. Future Work

------------------------------------------------------------------------

## 🔎 Overview of Problem Statement

This project analyzes a **breast cancer dataset** to distinguish between
**benign (B)** and **malignant (M)** tumors. The aim is to preprocess
the dataset, explore feature distributions, visualize correlations, and
build machine learning models for accurate classification---an essential
step for early cancer detection and treatment planning.

------------------------------------------------------------------------

## 🎯 Objective

-   Load and preprocess the dataset.\
-   Explore data distributions, detect outliers, and check
    correlations.\
-   Handle missing/irrelevant columns and scale features.\
-   Train multiple ML classifiers.\
-   Evaluate models using metrics such as accuracy, precision, recall,
    F1-score, and ROC-AUC.

------------------------------------------------------------------------

## 📂 Dataset

-   **File Used:** `data (1).csv`\
-   **Size:** 569 rows × 33 columns (before cleaning).\
-   **Target Variable:** `diagnosis` → Malignant (M), Benign (B).\
-   **Cleaning Steps:**
    -   Dropped `id` and `Unnamed: 32` (all missing).\
    -   Handled duplicates and missing values.\
-   **Class Distribution:**
    -   Benign: \~62.7%\
    -   Malignant: \~37.3%

------------------------------------------------------------------------

## 🛠 Methodology

1.  **Data Cleaning** -- Removed irrelevant columns, checked missing
    values, and duplicates.\
2.  **EDA** -- Plotted histograms, boxplots, correlation heatmaps, and
    class distributions.\
3.  **Preprocessing** -- Encoded target, handled outliers (IQR), and
    scaled features.\
4.  **Modeling** -- Applied multiple classifiers (Logistic Regression,
    SVC, Decision Tree, Random Forest, Gradient Boosting, AdaBoost, MLP,
    Naive Bayes, KNN).\
5.  **Evaluation** -- Compared models on Accuracy, Precision, Recall,
    F1, and ROC-AUC.

------------------------------------------------------------------------

## 📊 Exploratory Data Analysis (EDA)

-   Histograms and boxplots used to explore feature distributions and
    detect outliers.\
-   Correlation heatmap revealed relationships between variables.\
-   Target distribution: **Benign \~62.7% vs Malignant \~37.3%**,
    showing moderate imbalance.

------------------------------------------------------------------------

## ⚙️ Data Preprocessing

-   Target `diagnosis` encoded (B=0, M=1).\
-   Outlier treatment using IQR method.\
-   StandardScaler applied for normalization.\
-   Dataset split into **70% training and 30% testing**.

------------------------------------------------------------------------

## 🤖 Modeling

Models implemented:\
- Logistic Regression\
- SVC (Support Vector Classifier)\
- Decision Tree\
- Random Forest\
- Gradient Boosting\
- AdaBoost\
- MLP (Neural Network)\
- Gaussian Naive Bayes\
- KNN

Evaluation metrics: **Accuracy, Precision, Recall, F1-score, ROC-AUC**.

------------------------------------------------------------------------

## ✅ Results

-   Ensemble models (**Random Forest, Gradient Boosting, AdaBoost**)
    gave the **highest accuracy and AUC scores**, consistently
    outperforming simpler models.\
-   Random Forest and Gradient Boosting were the most reliable across
    metrics, achieving accuracies around **95--97%**.\
-   Simpler models (Logistic Regression, Naive Bayes) showed decent
    accuracy but lower recall, which is critical for detecting malignant
    cases.

------------------------------------------------------------------------

## ⚠️ Limitations

-   Dataset moderately imbalanced (more benign than malignant).\
-   Only biopsy-derived features included, excluding other
    clinical/biological data.\
-   Models trained and validated only on one dataset, not tested for
    generalization.

------------------------------------------------------------------------

## 📌 Conclusion

This project demonstrates that **machine learning models can effectively
classify breast cancer tumors** as benign or malignant. Ensemble methods
like **Random Forest and Gradient Boosting** proved the most effective,
offering a balance of high accuracy and recall. These findings highlight
the potential of ML in supporting **early detection and clinical
decision-making**.

------------------------------------------------------------------------

## 🔮 Future Work

-   Apply **SMOTE/class weighting** to handle class imbalance.\
-   Test additional algorithms like **XGBoost, CatBoost, and Deep
    Learning models**.\
-   Use **feature selection** to reduce redundancy.\
-   Deploy as a **decision-support system** for real-world medical use.
