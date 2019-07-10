# /usr/bin/env python
# -*- coding: utf-8 -*-
# author by xiaotian
from django.conf.urls import url
from app.views import *

urlpatterns = [
    url(r'^home/$', home, name='home'),
    url(r'^register/$', register, name='register'),
    # url(r'^register_view/$', register_view, name='register_view'),
    url(r'^active/', active, name='active'),
    # url(r'^login/$', login, name='login'),
    url(r'^login_handle/$', login_handle, name='login_handle'),
    url(r'^mine/$', mine, name='mine'),
    url(r'^username_check/$', username_check, name='username_check'),
    url(r'^user_active/$', user_active, name='user_active'),
    url(r'^goods_show/$', goods_show, name='goods_show'),
    url(r'^details/$', details, name='details'),
    url(r'^search/$', search, name='search'),
    url(r'^cart/$', cart, name='cart'),
    url(r'^addcart/$', addcart, name='addcart'),
    url(r'^cart_num_add/$', cart_num_add, name='cart_num_add'),
    url(r'^cart_num_reduce/$', cart_num_reduce, name='cart_num_reduce'),
    url(r'^cart_del/$', cart_del, name='cart_del'),
    url(r'^logout/$', logout, name='logout'),
]
