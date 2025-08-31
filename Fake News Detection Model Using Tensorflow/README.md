# Fake News Detection

## Overview of Problem Statement
Fake news has become a critical issue with the rise of online platforms. The spread of misinformation can mislead the public and create social, political, or economic consequences. Detecting and classifying fake news is therefore a significant challenge in Natural Language Processing (NLP).

## Objective
The main objective of this project is to develop a **deep learning-based classifier** that can accurately distinguish between **Fake** and **Real** news articles based on their textual content.

## Dataset
- **Source**: `news.csv`  
- **Features**:
  - `text`: The main body of the news article.
  - `label`: Binary indicator (`FAKE` or `REAL`).
- **Preprocessing**:
  - Dropped irrelevant column (`Unnamed: 0`).
  - Removed missing values.
  - Added `text_length` feature for analysis.

## Methodology
1. **Data Cleaning** – Removed unnecessary columns and null values.  
2. **EDA** – Visualized label distribution, created word clouds for fake vs real news, and analyzed text lengths.  
3. **Preprocessing**:
   - Encoded labels (`FAKE` = 0, `REAL` = 1).
   - Tokenized news text (vocabulary size = 6000).
   - Converted text to sequences and padded to fixed length (`maxlen=500`).  
4. **Modeling**:
   - Designed an **Optimized Bidirectional LSTM Model**:
     - Embedding layer (128 dimensions).
     - SpatialDropout1D (0.3).
     - BiLSTM(64) → Dropout(0.4).
     - BiLSTM(32).
     - Dense(64, ReLU) → Dropout(0.5).
     - Dense(1, Sigmoid).  
   - Compiled with **binary crossentropy** loss and **Adam** optimizer.  
   - Used **EarlyStopping** on validation loss.  
5. **Evaluation** – Measured accuracy, precision, recall, and F1-score. Also plotted training vs validation accuracy.

## Exploratory Data Analysis (EDA)
- **Label Distribution**: Balanced dataset of Fake and Real articles.  
- **Word Clouds**:
  - Fake news: More sensational/emotive words.
  - Real news: Richer vocabulary, more fact-based.  
- **Text Lengths**: Fake news articles tend to be shorter.

## Modeling
- **Deep Learning Model**: Bidirectional LSTM architecture.  
- **Training**:
  - Batch size: 64  
  - Epochs: 10 (with early stopping)  
  - Validation split: 0.1  
- **Prediction Example**:  
  - Input: *“Karry to go to France in gesture of sympathy”*  
  - Model output: Classified as **REAL**.

## Results
- **Accuracy**: ~90% (based on evaluation in notebook).  
- **Classification Report**: Balanced precision, recall, and F1-scores for both Fake and Real labels.  
- **Training Curve**: Accuracy improved steadily, validation stabilized after early stopping.  

## Limitations
- Only textual content was considered; no external metadata like publisher credibility or article source.  
- Dataset size and diversity may limit generalization to unseen contexts.  
- LSTM models are computationally expensive compared to simpler models.  

## Conclusion
The Bidirectional LSTM model effectively classifies Fake vs Real news with high accuracy. The project demonstrates the potential of deep learning for fake news detection in NLP.

## Future Work
- Explore **Transformer models** (BERT, RoBERTa) for higher accuracy.  
- Integrate metadata features (author, publisher, date, etc.).  
- Perform advanced hyperparameter tuning and cross-validation.  
- Deploy as a **real-time fake news detection system** with an interactive interface.  
