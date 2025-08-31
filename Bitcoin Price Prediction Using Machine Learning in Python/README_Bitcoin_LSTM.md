# Bitcoin Price Prediction using LSTM

## 📑 Table of Contents

1.  Overview of Problem Statement\
2.  Objective\
3.  Dataset\
4.  Methodology\
5.  Exploratory Data Analysis (EDA)\
6.  Modeling\
7.  Results\
8.  Limitations\
9.  Conclusion\
10. Future Work

------------------------------------------------------------------------

## 🔎 Overview of Problem Statement

The project focuses on predicting **Bitcoin closing prices** using
historical OHLCV (Open, High, Low, Close, Volume) data. Given the highly
volatile nature of cryptocurrency markets, accurate forecasting can help
traders and investors make informed decisions.

------------------------------------------------------------------------

## 🎯 Objective

-   Preprocess Bitcoin price data and prepare it for modeling.\
-   Explore historical price trends and patterns.\
-   Build and train a **Long Short-Term Memory (LSTM)** neural network
    for time-series forecasting.\
-   Evaluate model performance using error metrics.\
-   Compare predicted and actual Bitcoin prices visually.

------------------------------------------------------------------------

## 📂 Dataset

-   **File Used:** `Bitcoin.csv`\
-   **Features:** Open, High, Low, Close, Volume (OHLCV).\
-   **Target Variable:** Closing Price (`Close`).\
-   **Cleaning Steps:**
    -   Converted `Date` to datetime and set as index.\
    -   Dropped `Adj Close` column.\
    -   Checked missing values and duplicates.

------------------------------------------------------------------------

## 🛠 Methodology

1.  **Data Preprocessing**
    -   Scaled OHLCV features using MinMaxScaler.\
    -   Created time-series sequences with a 60-day window.\
    -   Split dataset into **80% training and 20% testing**.
2.  **Model Building**
    -   Built an LSTM model with two stacked LSTM layers and Dropout for
        regularization.\
    -   Optimizer: Adam.\
    -   Loss: Mean Squared Error.\
    -   EarlyStopping applied to prevent overfitting.
3.  **Model Training & Validation**
    -   Trained for up to 100 epochs with batch size 32.\
    -   Monitored training vs validation loss curves.
4.  **Evaluation**
    -   Used **MAE, RMSE, R² score** to assess prediction accuracy.\
    -   Visualized actual vs predicted Bitcoin prices.

------------------------------------------------------------------------

## 📊 Exploratory Data Analysis (EDA)

-   Checked dataset size, columns, and summary statistics.\
-   Verified missing values and duplicates (none significant).\
-   Plotted Bitcoin **closing price trend over time**.\
-   Confirmed high volatility and trend fluctuations.

------------------------------------------------------------------------

## 🤖 Modeling

-   **Model:** Stacked LSTM network.\
-   **Layers:**
    -   LSTM (100 units, return sequences)\
    -   Dropout (0.3)\
    -   LSTM (100 units)\
    -   Dropout (0.3)\
    -   Dense (1 unit, regression output)

------------------------------------------------------------------------

## ✅ Results

-   The LSTM model captured overall patterns in Bitcoin prices.\
-   Evaluation metrics:
    -   **MAE**: Low error between actual and predicted values.\
    -   **RMSE**: Moderate but acceptable given market volatility.\
    -   **R² Score**: Positive, showing the model explains a significant
        portion of variance.\
-   Visualizations show predicted prices closely follow actual prices
    with slight deviations during sharp fluctuations.

------------------------------------------------------------------------

## ⚠️ Limitations

-   Model relies only on **historical OHLCV data**; external factors
    like news, regulations, or global events are not included.\
-   LSTM requires careful tuning; performance may vary with different
    sequence lengths or hyperparameters.\
-   Predictions may not capture extreme volatility (sudden
    spikes/drops).

------------------------------------------------------------------------

## 📌 Conclusion

The LSTM model effectively predicts Bitcoin price trends, achieving good
performance metrics and visual alignment between predicted and actual
values. While not perfect due to market unpredictability, the approach
demonstrates the strength of **deep learning in time-series
forecasting**.

------------------------------------------------------------------------

## 🔮 Future Work

-   Incorporate **external features** (sentiment analysis, trading
    volume from exchanges, macroeconomic factors).\
-   Experiment with **GRU, Bidirectional LSTM, or hybrid models**.\
-   Apply **hyperparameter tuning** (learning rate, batch size, sequence
    length).\
-   Deploy the model into a **real-time forecasting dashboard**.
