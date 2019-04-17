import uuid
from meizu_mall.settings import MEDIA_ROOT
from django.shortcuts import render, redirect, reverse
from django.http import HttpResponse, JsonResponse
import re
import os
from lib.password_sha import my_sha256
from app.models import *


def home(request):
    return HttpResponse('home')


def register(request):
    if not request.method == 'POST':
        return HttpResponse('request error')

    username = request.POST.get('username')
    password = request.POST.get('password')
    repassword = request.POST.get('repassword')
    email = request.POST.get('email')
    icon = request.FILES.get('icon')

    if not username or not password or not repassword or not email:
        return HttpResponse('您提交的选项有一个为空')

    if not re.match('^[a-zA-Z_]\w{5,17}$', username):
        return HttpResponse('用户名格式不正确')

    if not re.match('^\w{8,}$', password):
        return HttpResponse('密码格式不正确')

    if password != repassword:
        return HttpResponse('密码不一致')

    if not re.match('^\w+@\w+(\.\w+)+$', email):
        return HttpResponse('邮箱格式不正确')

    user = User()
    user.username = username
    user.password = my_sha256(password)
    user.email = email
    user.save()

    if icon:
        icon_file_name = str(uuid.uuid4()) + os.path.splitext(icon.name)[1]
        icon_saved_path = MEDIA_ROOT + icon_file_name
        # 保存头像
        with open(icon_saved_path, 'ab') as f:
            for part in icon.chunks():
                f.write(part)
        # 保存到数据库中的头像路径
        icon_db_path = '/uploads/' + icon_file_name
        user.icon = icon_db_path
        user.save()

    request.session['uid'] = user.id

    return redirect(reverse('app:home'))
