import uuid
import json

from django.core import serializers

from meizu_mall.settings import MEDIA_ROOT
# from django.shortcuts import render, redirect, reverse
from django.http import HttpResponse, JsonResponse
import re
import os
from lib.password_sha import my_sha256
from app.models import *
from lib.email_send import send_register_email
from django.core.cache import cache


def home(request):
    recommend_show_img = Recommend_show.objects.all()
    recommend_mall = recommend_show_img.filter(sign='recommend_mall').values('img')
    recommend_phone = recommend_show_img.filter(sign='recommend_phone').values('img')
    big_show_img = recommend_show_img.filter(sign='big_show').values('img')
    hot_phone = Recommend_phone.objects.values('img', 'name', 'price')
    big_show_mall = Big_show.objects.values('img', 'name', 'price')
    # data[''] = list(recommend_show_img)

    data = {
        'recommend_mall': list(recommend_mall),
        'recommend_phone': list(recommend_phone),
        'big_show_img': list(big_show_img),
        'hot_phone': list(hot_phone),
        'big_show_mall': list(big_show_mall),
    }




    # def json_test(request):
    #     data = {}
    #     book = Book.objects.values()
    #     data['list'] = list(book)
    #     return JsonResponse(data)



    # a = Recommend_phone.objects.all()
    # a = json.loads(a)
    # data['list'] = json.loads(serializers.serialize("json", book))

    # data = {
    #     'a':a
    # }
    return JsonResponse(data)


def goods_show(request):
    if not request.method == 'POST':
        return HttpResponse('request error')
    category = request.POST.get('category')
    goods = Goods.objects.filter(category=category).values('img', 'name', 'price')
    data = {
        'goods': list(goods),
    }

    return JsonResponse(data)


def register(request):
    data = {
        'msg': 1
    }
    if not request.method == 'POST':
        data['msg'] = -1
        return JsonResponse(data)

    username = request.POST.get('username')
    password = request.POST.get('password')
    repassword = request.POST.get('repassword')
    email = request.POST.get('email')
    icon = request.FILES.get('icon')

    print(request.POST)
    print(username, password, repassword, email)
    if not username or not password or not repassword or not email:
        # return HttpResponse('您提交的选项有一个为空')
        data['msg'] = -2
        return JsonResponse(data)

    if not re.match('^[a-zA-Z_]\w{5,17}$', username):
        data['msg'] = -3
        return JsonResponse(data)

    if not re.match('^\w{8,}$', password):
        data['msg'] = -4
        return JsonResponse(data)
        # return HttpResponse('密码格式不正确')

    if password != repassword:
        # return HttpResponse('密码不一致')
        data['msg'] = -5
        return JsonResponse(data)

    if not re.match('^\w+@\w+(\.\w+)+$', email):
        # return HttpResponse('邮箱格式不正确')
        data['msg'] = -6
        return JsonResponse(data)

    user = User()
    user.username = username
    user.password = my_sha256(password)
    user.email = email
    token = str(uuid.uuid4())
    send_register_email(email, token)
    cache.set(token, username, timeout=600)
    print('********************************************************')
    user.token = token
    # user.save()


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
    # cache.set(user.token, user.id, timeout=2)


    # request.session['uid'] = user.id

    # data['msg'] = 1
    return JsonResponse(data)


# def register_view(request):
#     return render(request, 'app/register_send.html')


def username_check(request):
    data = {
        'msg': 1
    }
    if not request.method == 'POST':
        data['msg'] = -1
        return JsonResponse(data)
    username = request.POST.get('username')
    users = User.objects.filter(username=username)
    if users:
        data['msg'] = -2
        # return JsonResponse(data)
    return JsonResponse(data)


def active(request):
    # data = {
    #     'msg': 1,
    # }
    token = request.GET.get('token')
    username = cache.get(token)
    print(username)
    users = User.objects.filter(token=token)
    if not users:
        return HttpResponse('token error')

    user = users.first()
    if not user.username == username:
        return HttpResponse('token timeout')

    user.active = True
    user.save()
    return HttpResponse('active success')
    # return JsonResponse(data)


def login_handle(request):
    data = {
        'msg': 1
    }
    if not request.method == 'POST':
        # return HttpResponse('request error')
        data['msg'] = -11
        return JsonResponse(data)
    username = request.POST.get('username')
    password = my_sha256(request.POST.get('password'))
    users = User.objects.filter(username=username, password=password)
    if not users:
        # return HttpResponse('username or password error')
        data['msg'] = -22
        return JsonResponse(data)
    user = users.first()
    if not user.active:
        # return HttpResponse('user is not active')
        data['msg'] = -33
        return JsonResponse(data)
    request.session['uid'] = user.id
    # return redirect(reverse('app:mine'))
    # data['msg'] = -2
    return JsonResponse(data)


def logout(request):
    data = {
        'msg': 1
    }
    del request.session['uid']
    return JsonResponse(data)


def mine(request):
    data = {
        'msg': 1,
    }
    uid = request.session.get('uid')
    users = User.objects.filter(id=uid)
    if not users:
        # return redirect(reverse('app:login'))
        data['msg'] = -11
        return JsonResponse(data)
    user = users.first()
    username = user.username
    # icon = user.icon
    # data = {
    #     'username': username,
    #     'icon': icon,
    # }
    data['username'] = username
    # data['icon'] = icon
    return JsonResponse(data)
    # return render(request, 'app/mine.html', data)


def user_active(request):
    data = {
        'msg': 1
    }
    if not request.method == 'POST':
        data['msg'] = -1
        return HttpResponse(data)

    username = request.POST.get('username')
    password = my_sha256(request.POST.get('password'))
    email = request.POST.get('email')
    users = User.objects.filter(username=username, password=password)
    if not users:
        data['msg'] = -2
        return JsonResponse(data)
    user = users.first()
    if user.active:
        data['msg'] = -3
        return JsonResponse(data)

    token = str(uuid.uuid4())
    send_register_email(email, token)
    cache.set(token, username, timeout=600)
    # user.active = True
    # user.save()
    return JsonResponse(data)


def details(request):
    if not request.method == "POST":
        return HttpResponse('request error')
    mall_name = request.POST.get('mall_name')
    malls = Goods.objects.filter(name=mall_name)
    if not malls:
        return HttpResponse('not find this mall')
    mall = malls.values('img', 'name', 'price')
    data = {
        'mall': list(mall),
    }
    return JsonResponse(data)


# 搜索框
def search(request):
    if not request.method == 'POST':
        return HttpResponse("request error")

    content = request.POST.get('content')
    # print(content)
    # goods_name_list = Goods.objects.values('name')
    # goods_list = []
    # for goods_name in goods_name_list:
    #     # print(goods_name['name'])
    #     if content in goods_name['name']:
    goods = Goods.objects.filter(name__contains=content).values('name', 'price', 'img')
    # goods_list.append(goods)

    # print(goods_list)
    data = {
        'goods': list(goods),
    }
    return JsonResponse(data)


def cart(request):
    data = {
        'msg': 1,
    }
    uid = request.session.get('uid')

    if not uid:
        data['msg'] = -1
        #         not login
        return JsonResponse(data)

    carts = Cart.objects.filter(user_id=uid)
    for cart in carts:
        # cart_pro = cart.values('user_id', 'goods_id', 'goods', 'num')
        goodsid = cart.goods_id
        cartid = cart.id
        goods = Goods.objects.filter(id=goodsid).values('name', 'price', 'img')
        data[cartid] = list(goods)
    return JsonResponse(data)


def addcart(request):
    data = {
        'msg': 1,
    }
    uid = request.session.get('uid')

    if not uid:
        data['msg'] = -1
#         not login
        return JsonResponse(data)

    else:
        if not request.method == 'POST':
            return HttpResponse('request error')

        # num = request.POST.get('num')
        goodsid = request.POST.get('goodsid')

        carts = Cart.objects.filter(user_id=uid, goods_id=goodsid)

        if carts.exists():
            # cart = carts.first()
            # cart.num += int(num)
            # cart.save()
            data['msg'] = -2
            # cart is being
            return JsonResponse(data)

        else:
            cart = Cart()
            cart.user_id = uid
            cart.goods_id = goodsid
            # cart.num = int(num)
            cart.save()
    return JsonResponse(data)


def cart_num_add(request):
    data = {
        'msg': 1
    }
    uid = request.session.get('uid')

    if not uid:
        data['msg'] = -1
        #         not login
        return JsonResponse(data)

    if not request.method == 'POST':
        return HttpResponse('request error')

    cartid = request.POST.get('cartid')
    carts = Cart.objects.filter(id=cartid)
    if not carts:
        data['msg'] = -2
        # not this cart
    else:
        cart = carts.first()
        cart.num += 1
        cart.save()

    return JsonResponse(data)


def cart_num_reduce(request):
    data = {
        'msg': 1,
    }
    uid = request.session.get('uid')

    if not uid:
        data['msg'] = -1
        #         not login
        return JsonResponse(data)

    if not request.method == 'POST':
        return HttpResponse('request error')

    cartid = request.POST.get('cartid')
    carts = Cart.objects.filter(id=cartid)
    if not carts:
        data['msg'] = -2
        # not this cart
    else:
        cart = carts.first()
        if cart.num > 1:
            cart.num -= 1
            cart.save()

    return JsonResponse(data)


def cart_del(request):
    data = {
        'msg': 1
    }
    uid = request.session.get('uid')

    if not uid:
        data['msg'] = -1
        #         not login
        return JsonResponse(data)

    if not request.method == 'POST':
        return HttpResponse('request error')

    cartid = request.POST.get('cartid')

    carts = Cart.objects.filter(id=cartid)

    if not carts:
        data['msg'] = -2
        # not this cart

    else:
        carts.delete()

    return JsonResponse(data)