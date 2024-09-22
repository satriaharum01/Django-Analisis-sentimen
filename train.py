import pandas as pd
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'core.settings')
django.setup()
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.naive_bayes import MultinomialNB
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
import pickle

# Models Import
from apps.models import m_komentar

komentar = []
sentimen = []
all_objs = m_komentar.objects.all().values("user","content",'sentimen')
i=1
for load in all_objs:
    komentar.append(load['content'])
    sentimen.append(load['sentimen'])
# Contoh dataset (biasanya Anda akan memiliki dataset yang lebih besar)
data = {
    'text': komentar,
    'label': sentimen
}
df = pd.DataFrame(data)

# Pisahkan data menjadi fitur (X) dan label (y)
X = df['text']
y = df['label']

# Split data menjadi set latih dan uji
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Ekstraksi fitur menggunakan TF-IDF
tfidf_vectorizer = TfidfVectorizer()
X_train_tfidf = tfidf_vectorizer.fit_transform(X_train)
X_test_tfidf = tfidf_vectorizer.transform(X_test)

# Latih model Naive Bayes
model = MultinomialNB()
model.fit(X_train_tfidf, y_train)

# Evaluasi model
y_pred = model.predict(X_test_tfidf)
print("Akurasi:", accuracy_score(y_test, y_pred))

# Simpan model dan vectorizer ke dalam file
with open('tfidf_vectorizer.pkl', 'wb') as f:
    pickle.dump(tfidf_vectorizer, f)

with open('sentiment_model.pkl', 'wb') as f:
    pickle.dump(model, f)