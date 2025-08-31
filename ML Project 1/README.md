# Air Pollution Data Analysis

## 📑 Table of Contents

1.  Title\
2.  Overview of Problem Statement\
3.  Objective\
4.  Dataset\
5.  Exploratory Data Analysis (EDA)\
6.  Data Preprocessing\
7.  Modeling\
8.  Results\
9.  Limitations\
10. Conclusion\
11. Future Work

------------------------------------------------------------------------

## 📝 Title

**Air Pollution Data Analysis**

------------------------------------------------------------------------

## 📌 Overview of Problem Statement

The notebook focuses on analyzing **air pollution data**. The main goal
is to study pollutant patterns, explore relationships between features,
and build machine learning models to predict air quality indicators.

------------------------------------------------------------------------

## 🎯 Objective

-   Preprocess the dataset and clean it.\
-   Explore pollutant distributions through statistical summaries and
    visualizations.\
-   Detect correlations between pollutants.\
-   Apply machine learning models for predicting Air Quality Index
    (AQI).\
-   Compare model performance using standard evaluation metrics.

------------------------------------------------------------------------

## 📂 Dataset

-   **File:** `air_pollution_data.csv`\
-   Columns include pollutants (e.g., `pm2_5`, `pm10`, etc.) and target
    variable `aqi`.\
-   Both **numerical** and **categorical** features present.

------------------------------------------------------------------------

## 🔍 Exploratory Data Analysis (EDA)

-   Summary statistics (`info()`, `describe()`).\
-   Checked **missing values** and **duplicates**.\
-   Visualizations:
    -   Histograms of numerical features.\
    -   Boxplots for outlier detection.\
    -   Pairplots to examine feature relationships.\
    -   Correlation heatmap.

**Key Finding:**\
- `pm10` was dropped due to extremely high correlation (0.99) with
`pm2_5`, indicating strong multicollinearity.

------------------------------------------------------------------------

## ⚙️ Data Preprocessing

-   **Outlier Treatment:** Applied IQR capping to numerical columns.\
-   **Encoding:** Used Label Encoding for categorical variables.\
-   **Scaling:** StandardScaler applied for normalization.

------------------------------------------------------------------------

## 🤖 Modeling

Implemented the following regression models:\
- Linear Regression\
- Decision Tree Regressor\
- Random Forest Regressor\
- Gradient Boosting Regressor\
- Support Vector Regression (SVR)

**Evaluation Metrics:**\
- Mean Absolute Error (MAE)\
- Mean Squared Error (MSE)\
- Root Mean Squared Error (RMSE)\
- R² Score

------------------------------------------------------------------------

## ✅ Results

-   Ensemble models (**Random Forest** and **Gradient Boosting**)
    outperformed others.\
-   Linear Regression performed weaker due to feature complexity.\
-   Gradient Boosting achieved the best overall performance.

------------------------------------------------------------------------

## ⚠️ Limitations

-   Dataset limited to available pollutants.\
-   External environmental factors (like weather, traffic, industry
    activity) not included.\
-   Predictions are restricted to the dataset scope.

------------------------------------------------------------------------

## 📌 Conclusion

-   Outlier handling and multicollinearity removal improved model
    reliability.\
-   Ensemble methods gave the most accurate AQI predictions.\
-   Results show machine learning can be an effective tool for **air
    pollution monitoring**.

------------------------------------------------------------------------

## 🔮 Future Work

-   Include additional features like **weather and industrial
    activity**.\
-   Collect data across multiple locations and timelines.\
-   Try **time-series models (LSTM/GRU)** for AQI forecasting.\
-   Deploy the model as a **real-time air quality monitoring tool**.
