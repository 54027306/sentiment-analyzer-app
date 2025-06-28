import gradio as gr
import joblib
import re
import nltk
from nltk.corpus import stopwords
from nltk.stem import WordNetLemmatizer

# Download required NLTK resources (punkt not used to avoid Hugging Face crash)
nltk.download('stopwords')
nltk.download('wordnet')

# Load trained model and vectorizer
model = joblib.load("best_sentiment_model.pkl")
vectorizer = joblib.load("tfidf_vectorizer.pkl")

# Initialize tools
stop_words = set(stopwords.wor_
