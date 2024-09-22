from django.urls import path, re_path
from . import views

urlpatterns = [
    path('naive_bayes/', views.index, name='naive_bayes'),
    path('naive_bayes/json', views.json, name='naive_bayes/json'),
    path('analisis/', views.analisis, name='analisis'),
    path('analisis/cek', views.cek, name='analisis/cek'),
    path('analisis/upload', views.upload_file, name='analisis/upload_file'),
]
