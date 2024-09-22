from django.forms import ModelForm
from django.utils.translation import gettext_lazy as _

# import class Task dari file todo/models.py
from ..models import m_media


# membuat class TaskForm untuk membuat task
class MediaForm(ModelForm):
    class Meta:
        # merelasikan form dengan model
        model = m_media
        # mengeset field apa saja yang akan ditampilkan pada form
        fields = ('nama_media',)
        # mengatur teks label untuk setiap field
        labels = {
            'nama_media': _('nama')
        }
        # mengatur teks pesan error untuk setiap validasi fieldnya
        error_messages = {
            'nama_media': {
                'required': _("Nama Media harus diisi."),
            }
        }
