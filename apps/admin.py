from django.contrib import admin

from .models import m_komentar, m_media
# Register your models here.
admin.site.register(m_media)
admin.site.register(m_komentar)