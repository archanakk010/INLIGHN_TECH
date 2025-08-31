# Microsoft Stock Price Prediction

## Overview of Problem Statement

Stock price prediction is a critical task in financial analytics.
Microsoft, being one of the largest technology companies, attracts
investor interest worldwide. The goal of this project is to analyze
Microsoft's stock data, identify trends, and build machine learning
models to predict stock prices, enabling better decision-making for
investors and analysts.

## Objective

-   Perform Exploratory Data Analysis (EDA) to understand trends,
    patterns, and correlations in Microsoft stock data.\
-   Preprocess the dataset (handle missing values, duplicates, and
    irrelevant features).\
-   Apply feature engineering and transformations for time-series
    analysis.\
-   Train multiple regression models to predict future stock prices.\
-   Evaluate model performance with appropriate error metrics (MAE, MSE,
    RMSE, R²).

## Dataset

-   **Source**: Microsoft stock historical data (`MicrosoftStock.csv`)\
-   **Features**: `open`, `high`, `low`, `close`, `volume`\
-   **Target**: `close` (closing price of the stock)

## Methodology

1.  Import libraries and dataset.\
2.  Data preprocessing (handling missing values, checking duplicates).\
3.  Exploratory Data Analysis (EDA) with summary statistics and plots.\
4.  Feature engineering and train-test split.\
5.  Model building:
    -   Linear Regression\
    -   Random Forest Regressor\
    -   Gradient Boosting Regressor\
6.  Model evaluation with MAE, MSE, RMSE, R².\
7.  Visualization of actual vs predicted stock prices.

## Exploratory Data Analysis (EDA)

-   Trend analysis of stock prices over time.\
-   Distribution plots for features (`open`, `high`, `low`, `close`,
    `volume`).\
-   Correlation heatmap to observe relationships between features.

## Modeling

-   **Linear Regression**: Baseline model.\
-   **Random Forest Regressor**: Ensemble method to capture non-linear
    relationships.\
-   **Gradient Boosting Regressor**: Advanced boosting approach for
    accuracy.

## Results

-   Linear Regression: Reasonable but underfit the data.\
-   Random Forest: Better fit, lower error.\
-   Gradient Boosting Regressor: Outperformed others with lowest MAE,
    MSE, RMSE, and highest R².

## Limitations

-   Stock price influenced by external factors (news, global economy,
    events) not included in dataset.\
-   Predictions only based on historical stock prices and technical
    features.\
-   No feature scaling or hyperparameter tuning performed yet.

## Conclusion

-   Ensemble learning methods (Random Forest, Gradient Boosting)
    performed better than Linear Regression.\
-   Gradient Boosting Regressor provided the best predictive
    performance.\
-   Tree-based methods are more suitable for financial data with
    non-linear patterns.

## Future Work

-   Include additional features: macroeconomic indicators, sentiment
    analysis, market indices.\
-   Apply hyperparameter tuning for better model performance.\
-   Experiment with deep learning models (LSTM, GRU) for sequential
    time-series forecasting.

------------------------------------------------------------------------
