from django.forms import forms, ModelForm
from django.utils.translation import gettext_lazy as _


# membuat class TaskForm untuk membuat task
class AnalisisForm(ModelForm):
    class Meta:
        
        # mengeset field apa saja yang akan ditampilkan pada form
        fields = ('content',)
        # mengatur teks label untuk setiap field
        labels = {
            'content': _('content')
        }
        # mengatur teks pesan error untuk setiap validasi fieldnya
        error_messages = {
            'content': {
                'required': _("Harus diisi."),
            }
        }
        
class UploadFileForm(forms.Form):
    file = forms.FileField()
    
class TestFileForm(forms.Form):
    test_file = forms.FileField()