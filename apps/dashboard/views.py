import os
from django import template
from django.core import serializers
from django.shortcuts import redirect, render
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.template import loader
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse

# Models Import
from ..models import m_komentar, m_media

# Create your views here.


@login_required(login_url="/login/")
def index(request):
    data = {}
    data['media'] = m_media.objects.count()
    data['komentar'] = m_komentar.objects.count()
    data['s_positif'] = m_komentar.objects.filter(sentimen="Positif").count()
    data['s_negatif'] = m_komentar.objects.filter(sentimen="Negatif").count()
    context = {"segment": "dashboard","value": data}

    html_template = loader.get_template("page/dashboard.html")
    return HttpResponse(html_template.render(context, request))
