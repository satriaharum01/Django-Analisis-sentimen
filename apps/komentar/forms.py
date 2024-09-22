from django.forms import ModelForm
from django.utils.translation import gettext_lazy as _

# import class Task dari file todo/models.py
from ..models import m_komentar


# membuat class TaskForm untuk membuat task
class KomentarForm(ModelForm):
    class Meta:
        # merelasikan form dengan model
        model = m_komentar
        # mengeset field apa saja yang akan ditampilkan pada form
        fields = ('user','content','sentimen','media_id')
        # mengatur teks label untuk setiap field
        labels = {
            'user': _('user'),
            'content': _('content'),
            'sentimen': _('sentimen'),
            'media_id':_('media_id')
        }
        # mengatur teks pesan error untuk setiap validasi fieldnya
        error_messages = {
            'user': {
                'required': _("Penulis harus diisi."),
            },
            'content':{
                'required': _("Isi tidak boleh kosong. ")
            },
            'sentimen':{
                'required': _("Isi tidak boleh kosong. ")
            },
            'media_id':{
                'required': _("Isi tidak boleh kosong. ")
            }
        }
