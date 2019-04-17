# /usr/bin/env python
# -*- coding: utf-8 -*-
# author by xiaotian
from django.conf.urls import url
from app.views import *

urlpatterns = [
    url(r'^home/$', home, name='home'),
    url(r'^register/$', register, name='register'),
]