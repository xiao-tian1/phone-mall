# /usr/bin/env python
# -*- coding: utf-8 -*-
# author by xiaotian
# import pymysql
# import json
# import os
# from app.models import *



with open(r'3.txt', 'r', encoding="gbk") as f:
    a = f.readlines()
    print(a)

    for i in a:
        img, name, price = i.split(',')
        print(img, name, price)

# for i in a:
#     pro = Recommend_show()
#     pro.img = i
#     pro.abstract = 'recommend_mall'
#     pro.save()