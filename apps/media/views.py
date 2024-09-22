import os
from django import template
from django.core import serializers
from django.shortcuts import redirect, render
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.template import loader
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse, Http404

# Models Import

from ..models import m_media

# import class Form dari file forms.py
from .forms import MediaForm

# Create your views here.

@login_required(login_url="/login/")
def index(request):
    title = "Data Media"
    page = "media"
    data = m_media.objects.all()
    context = {"data": data, "page": page, "title": title}

    html_template = loader.get_template("page/media.html")
    return HttpResponse(html_template.render(context, request))

# STORE
def create(request):
    # Mengecek method pada request
    # Jika method-nya adalah POST, maka akan dijalankan
    # proses validasi dan penyimpanan data
    if request.method == 'POST':
        # membuat objek dari class Form
        form = MediaForm(request.POST)
        # Mengecek validasi form
        if form.is_valid():
            # Membuat Form baru dengan data yang disubmit
            new_task = MediaForm(request.POST)
            
            # Simpan data ke dalam table
            new_task.save()
            
            messages.success(request, 'Sukses Menambah Data baru.')
            return redirect('media')
    # Jika method-nya bukan POST
    else:
        
        return redirect('media')

# UPDATE
def update(request, media_id):
    # Mengecek method pada request
    # Jika method-nya adalah POST, maka akan dijalankan
    # proses validasi dan penyimpanan data
    all_objs = m_media.objects.get(id=media_id)
    if request.method == 'POST':
        # membuat objek dari class Form
        form = MediaForm(request.POST, instance=all_objs)
        # Mengecek validasi form
        if form.is_valid():
            # Simpan data ke dalam table
            form.save()
            
            messages.success(request, 'Sukses update data.')
            return redirect('media')
    # Jika method-nya bukan POST
    else:
        return redirect('media')
    
# DESTROY
def delete(request, media_id):
    try:
        all_objs = m_media.objects.get(id=media_id)
        all_objs.delete()
        return redirect('media')
    except m_media.DoesNotExist:
        raise Http404("Task tidak ditemukan.")

# JSON DATA OBJECT
def json(request):
    if request.method == "GET":
        results = []
        all_objs = m_media.objects.all().values("id", "nama_media")
        i=1
        for load in all_objs:
            load['DT_RowIndex']=i
            i= i+1
            #for i in load.items():
            #    load.items
        data = {"data": list(all_objs)}
        return JsonResponse(data, safe=False)
    
# FIND DATA OBJECT
def find(request, media_id):
    
    all_objs = m_media.objects.all().values("id", "nama_media").filter(id=media_id)
    
    data = {"data": list(all_objs)}
    return JsonResponse(data, safe=False)