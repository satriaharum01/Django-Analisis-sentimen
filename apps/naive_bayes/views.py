import os, pickle, joblib
import pandas as pd
from django import template
from django.core import serializers
from django.shortcuts import redirect, render
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.template import loader
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse, Http404
from .forms import UploadFileForm, TestFileForm

# Untuk Training Data
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.naive_bayes import MultinomialNB
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

# Models Import
from ..models import m_komentar, m_media

# Open Trained Data

# Load model dan vectorizer dari file pickle
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
with open(os.path.join(BASE_DIR, "tfidf_vectorizer.pkl"), "rb") as f:
    tfidf_vectorizer = pickle.load(f)

with open(os.path.join(BASE_DIR, "sentiment_model.pkl"), "rb") as f:
    model = pickle.load(f)


# Create your views here.


@login_required(login_url="/login/")
def index(request):
    if request.method == "GET":
        komentar = []
        sentimen = []
        all_objs = m_komentar.objects.all().values("user", "content", "sentimen")
        i = 1
        for load in all_objs:
            komentar.append(load["content"])
            sentimen.append(load["sentimen"])
        # Contoh dataset (biasanya Anda akan memiliki dataset yang lebih besar)
        data = {"text": komentar, "label": sentimen}

        df = pd.DataFrame(data)

        # Pisahkan data menjadi fitur (X) dan label (y)
        X = df["text"]
        y = df["label"]

        # Split data menjadi set latih dan uji
        X_train, X_test, y_train, y_test = train_test_split(
            X, y, test_size=0.2, random_state=42
        )

        # Ekstraksi fitur menggunakan TF-IDF
        tfidf_vectorizer = TfidfVectorizer()
        X_train_tfidf = tfidf_vectorizer.fit_transform(X_train)
        X_test_tfidf = tfidf_vectorizer.transform(X_test)

        # Latih model Naive Bayes
        model = MultinomialNB()
        model.fit(X_train_tfidf, y_train)

        # Evaluasi model
        y_pred = model.predict(X_test_tfidf)

        with open('apps/tfidf_vectorizer.pkl', 'wb') as f:
            pickle.dump(tfidf_vectorizer, f)

        with open('apps/sentiment_model.pkl', 'wb') as f:
            pickle.dump(model, f)
            
        # Menghitung metrik evaluasi
        accuracy = accuracy_score(y_test, y_pred)
        precision = precision_score(y_test, y_pred, average="weighted")
        recall = recall_score(y_test, y_pred, average="weighted")
        f1 = f1_score(y_test, y_pred, average="weighted")

        evaluation_data = zip(X_test, y_test, y_pred)
        # Kirim hasil evaluasi ke template
        context = {
            "title": "Evaluasi Model Naive Bayes",
            "accuracy": accuracy,
            "precision": precision,
            "recall": recall,
            "f1": f1,
            "evaluation_data": evaluation_data,
        }

        html_template = loader.get_template("page/naive_bayes.html")
        return HttpResponse(html_template.render(context, request))


# JSON DATA OBJECT
def json(user_input):

    komentar = []
    sentimen = []
    all_objs = m_komentar.objects.all().values("user", "content", "sentimen")
    i = 1
    for load in all_objs:
        komentar.append(load["content"])
        sentimen.append(load["sentimen"])
    # Contoh dataset (biasanya Anda akan memiliki dataset yang lebih besar)
    data = {"text": komentar, "label": sentimen}
    df = pd.DataFrame(data)

    # Pisahkan data menjadi fitur (X) dan label (y)
    X = df["text"]
    y = df["label"]

    # Split data menjadi set latih dan uji
    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42
    )

    # Ekstraksi fitur menggunakan TF-IDF
    tfidf_vectorizer = TfidfVectorizer()
    X_train_tfidf = tfidf_vectorizer.fit_transform(X_train)
    X_test_tfidf = tfidf_vectorizer.transform(X_test)

    # Latih model Naive Bayes
    model = MultinomialNB()
    model.fit(X_train_tfidf, y_train)

    # Save the trained model to a file
    joblib.dump(model, 'sentiment_model.pkl')  # Menyimpan model
    # Evaluasi model
    y_pred = model.predict(X_test_tfidf)

    return y_pred
    # text = "Sudah saatnya SDM Indonesia maju dalam hal ke ahli..."
    # text_counts = tfidf_vectorizer.transform([text])
    # sentiment = model.predict(text_counts)[0]
    #
    # return HttpResponse(sentiment)


def analisis(request):
    title = "Analisis Sentimen"
    
    if request.method == "POST":
        # Ambil teks dari input form pengguna
        user_input = request.POST.get("content")
        # Transform the comment text using TF-IDF vectorizer
        comment_tfidf = tfidf_vectorizer.transform([user_input])
        
        # Prediksi sentimen menggunakan model
        prediction = model.predict(comment_tfidf)
        sentiment = prediction[0]

        # Mengirim hasil prediksi kembali ke template
        context = {"title": title,"sentiment": sentiment}
    else:
        context = {"title": title}
    html_template = loader.get_template("page/analisis.html")
    return HttpResponse(html_template.render(context, request))


def cek(request):
    if request.method == "POST":
        # Ambil teks dari input form pengguna
        user_input = request.POST.get("content")

        # Prediksi sentimen menggunakan model
        prediction = json([user_input])
        sentiment = prediction[0]

        # Mengirim hasil prediksi kembali ke template
        return JsonResponse({"sentiment": sentiment})
    title = "Analisis Sentimen"
    context = {"title": title}
    html_template = loader.get_template("page/analisis.html")
    return HttpResponse(html_template.render(context, request))

def upload_file(request):

    if request.method == 'POST':
        test_form = TestFileForm(request.POST, request.FILES)
        if test_form.is_valid():
            test_file = request.FILES['test_file']
            df_test = pd.read_excel(test_file, engine='openpyxl')

            # Prediksi sentimen menggunakan model yang sudah dilatih
            hasil = predict_sentiment(df_test, model, tfidf_vectorizer)
            
            if hasil == "File harus memiliki kolom 'text' dan 'akun'":
                context = {"title": hasil}
                html_template = loader.get_template("page/404.html")
                return HttpResponse(html_template.render(context, request))
            positif=0
            negatif=0
            for load in hasil:
                #print(load['predicted_sentiment'])
                if load['predicted_sentiment'] == 'Positif':
                    positif= positif+1
                else:
                    negatif= negatif+1
                #for i in load.items():
            #    load.items
            return render(request, 'page/analisis_upload.html', {'hasil': hasil, 'positif': positif, 'negatif':negatif})

    return render(request, 'page/analisis.html', {'form': UploadFileForm(), 'test_form': TestFileForm()})

def predict_sentiment(df, model, vectorizer):
    if 'text' not in df.columns or 'akun' not in df.columns:
        return "File harus memiliki kolom 'text' dan 'akun'"

    X_test = df['text']
    x_akun = df['akun']
    
    # Transform the comment text using TF-IDF vectorizer
    comment_tfidf = tfidf_vectorizer.transform(X_test)
    
    # Prediksi sentimen menggunakan model
    prediction = model.predict(comment_tfidf)
    y_pred = prediction[0]


    # Menggabungkan hasil prediksi dengan teks aslinya
    
    hasil_dict = [{'akun': akun, 'text': text, 'predicted_sentiment': sentiment} for akun, text, sentiment in zip(x_akun, X_test, prediction)]
    #hasil = pd.DataFrame({'akun': x_akun, 'text': X_test, 'predicted_sentiment': prediction})
    #dict_hasil = hasil.to_dict()
    return  hasil_dict