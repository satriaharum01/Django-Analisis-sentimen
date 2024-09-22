import os
from django import template
from django.core import serializers
from django.shortcuts import redirect, render
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.template import loader
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse, Http404

# Models Import

from ..models import m_komentar, m_media

# import class Form dari file forms.py
from .forms import KomentarForm

# Create your views here.

@login_required(login_url="/login/")
def index(request):
    title = "Data Komentar"
    page = "komentar"
    data = m_komentar.objects.all()
    context = {"data": data, "page": page, "title": title}

    html_template = loader.get_template("page/komentar.html")
    return HttpResponse(html_template.render(context, request))

# STORE
def create(request):
    # Mengecek method pada request
    # Jika method-nya adalah POST, maka akan dijalankan
    # proses validasi dan penyimpanan data
    if request.method == 'POST':
        # membuat objek dari class Form
        form = KomentarForm(request.POST)
        # Mengecek validasi form
        if form.is_valid():
            # Membuat Form baru dengan data yang disubmit
            new_task = KomentarForm(request.POST)
            
            # Simpan data ke dalam table
            new_task.save()
            
            messages.success(request, 'Sukses Menambah Data baru.')
            return redirect('komentar')
    # Jika method-nya bukan POST
    else:
        
        return redirect('komentar')

# UPDATE
def update(request, komentar_id):
    # Mengecek method pada request
    # Jika method-nya adalah POST, maka akan dijalankan
    # proses validasi dan penyimpanan data
    all_objs = m_komentar.objects.get(id=komentar_id)
    if request.method == 'POST':
        # membuat objek dari class Form
        form = KomentarForm(request.POST, instance=all_objs)
        # Mengecek validasi form
        if form.is_valid():
            # Simpan data ke dalam table
            form.save()
            
            messages.success(request, 'Sukses update data.')
            return redirect('komentar')
    # Jika method-nya bukan POST
    else:
        return redirect('komentar')
    
# DESTROY
def delete(request, komentar_id):
    try:
        all_objs = m_komentar.objects.get(id=komentar_id)
        all_objs.delete()
        return redirect('komentar')
    except m_komentar.DoesNotExist:
        raise Http404("Task tidak ditemukan.")

# JSON DATA OBJECT
def json(request):
    
    if request.method == "GET":
        all_objs = m_komentar.objects.all().values("id","media_id","content","user","sentimen")
        i=1
        for load in all_objs:
            load['DT_RowIndex']=i
            i= i+1
            #filtering
            media = m_media.objects.all().values("id", "nama_media").filter(id=load['media_id'])
            if media:
                for c in media:
                    load['media']= c['nama_media']
            else:
                load['media']= 'Null'
            #for i in load.items():
            #    load.items
        i = i-1
        data = {'data': list(all_objs)}
        return JsonResponse(data, safe=False)
    
# FIND DATA OBJECT
def find(request, komentar_id):
    
    all_objs = m_komentar.objects.all().values("id","media_id","content","user").filter(id=komentar_id)
    
    data = {"data": list(all_objs)}
    return JsonResponse(data, safe=False)