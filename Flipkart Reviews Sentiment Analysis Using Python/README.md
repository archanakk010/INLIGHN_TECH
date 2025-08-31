# Flipkart Reviews Sentiment Analysis

## Overview of Problem Statement

Customer reviews play a crucial role in shaping buyer decisions on
e-commerce platforms. With thousands of reviews, it becomes challenging
for customers to read and interpret sentiment. This project performs
**sentiment analysis on Flipkart product reviews** to classify them into
**positive and negative categories**, helping both customers and
businesses gain quick insights.

## Objective

-   Analyze customer reviews from Flipkart and classify them as
    **Positive** or **Negative**.
-   Apply different **machine learning models** to evaluate performance
    on sentiment classification.
-   Identify the **best-performing model** for deployment.

## Dataset

-   **Source**: `flipkart_data.csv`
-   **Size**: Rows ≈ after preprocessing, Columns include:
    -   `Review Text`
    -   `Rating`
-   **Preprocessing steps**:
    -   Removed **duplicates**
    -   Handled **missing values**
    -   Converted ratings into **sentiment labels**:
        -   **Positive** → Ratings 4--5
        -   **Negative** → Ratings 1--2

## Methodology

1.  **Data Cleaning**

    -   Removed duplicates, unnecessary characters, stopwords,
        punctuation.\
    -   Tokenization, lowercasing.

2.  **Feature Engineering**

    -   Text transformed into **TF-IDF vectors**.

3.  **Data Splitting**

    -   Training and Testing sets using **train_test_split**.

4.  **Model Training**\
    Models implemented: Logistic Regression, SVC, KNN, Decision Tree,
    Random Forest, Gradient Boosting, XGBoost, AdaBoost, Bagging &
    Voting Classifiers.

5.  **Evaluation Metrics**

    -   Accuracy\
    -   Confusion Matrix\
    -   Classification Report (Precision, Recall, F1-score)

## Exploratory Data Analysis (EDA)

-   **Word Cloud**: Most frequent words in positive and negative
    reviews.\
-   **Rating Distribution**: Majority of reviews are positive (ratings
    4--5 dominate).\
-   **Text Length**: Positive reviews are generally longer than negative
    ones.\
-   **Class Balance**: Dataset slightly imbalanced towards positive
    reviews.

## Modeling

-   **Algorithms Tested**: Logistic Regression, SVC, Random Forest,
    Gradient Boosting, XGBoost, etc.\
-   **Feature Representation**: TF-IDF performed better than simple
    count-based vectors.\
-   **Performance**:
    -   Logistic Regression and SVC gave stable results.\
    -   Ensemble models (Random Forest, Gradient Boosting, XGBoost)
        achieved the highest accuracy.

## Results

-   **Best Performing Models**: Gradient Boosting / XGBoost.\
-   **Accuracy**: \~85--90%.\
-   **Observation**: Ensemble methods outperform single classifiers due
    to better handling of non-linear text patterns.

## Limitations

-   Dataset imbalance with more positive reviews.\
-   Neutral reviews (3-star) ignored.\
-   TF-IDF loses word order and semantics.\
-   Sarcasm and irony not captured.

## Conclusion

-   Sentiment analysis on Flipkart reviews provides a **reliable
    classification system**.\
-   Ensemble classifiers such as **Gradient Boosting and XGBoost**
    deliver the best results.\
-   Businesses can leverage this model to **improve product quality and
    customer experience**.

## Future Work

-   Add a **neutral sentiment class**.\
-   Use **deep learning (LSTM, BERT, Transformers)** for context-aware
    sentiment analysis.\
-   Handle imbalance with **SMOTE/oversampling**.\
-   Deploy model into a **web app or dashboard** for real-time analysis.
