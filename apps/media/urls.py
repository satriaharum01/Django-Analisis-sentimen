from django.urls import path, re_path
from . import views

urlpatterns = [
    path('media/', views.index, name='media'),
    path('media/save', views.create, name='media/save'),
    path('media/update/<int:media_id>', views.update, name="media/update"),
    path('media/delete/<int:media_id>', views.delete, name="media/delete"),
    path('media/json', views.json, name="media/json"),
    path('media/find/<int:media_id>', views.find, name="media/find"),
]
