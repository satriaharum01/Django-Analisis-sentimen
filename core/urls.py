from django.contrib import admin
from django.urls import include, path


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('apps.dashboard.urls')),
    path('', include('apps.media.urls')),
    path('', include('apps.komentar.urls')),
    path('', include('apps.naive_bayes.urls')),
    path('', include('myauth.urls'))
]