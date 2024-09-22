from django.urls import path, re_path
from . import views

urlpatterns = [
    path('komentar/', views.index, name='komentar'),
    path('komentar/save', views.create, name='komentar/save'),
    path('komentar/update/<int:komentar_id>', views.update, name="komentar/update"),
    path('komentar/delete/<int:komentar_id>', views.delete, name="komentar/delete"),
    path('komentar/json', views.json, name="komentar/json"),
    path('komentar/find/<int:komentar_id>', views.find, name="komentar/find"),
]
