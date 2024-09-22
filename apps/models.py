from django.db import models

# Create your models here.

class m_media(models.Model):
    id = models.CharField(primary_key=True, max_length=11)
    nama_media = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return str(self.nama_media)
    
    class Meta:
        db_table = 'media'
        
class m_komentar(models.Model):
    id = models.IntegerField(primary_key=True, max_length=11)
    user = models.TextField(blank=True, null=True)
    content = models.TextField(blank=True, null=True)
    sentimen = models.TextField(blank=True, null=True)
    media_id  = models.IntegerField(max_length=11)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.content)
    
    class Meta:
        db_table = 'komentar'

