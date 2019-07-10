# /usr/bin/env python
# -*- coding: utf-8 -*-
# author by xiaotian
# import django
#
# if django.VERSION >= (1, 7):  # 自动判断版本
#     django.setup()
#
#
# def main():
#     from app.models import Recommend_show
#     with open(r'../pro_data/1.txt', 'r', encoding="gbk") as f:
#         a = f.readlines()
#         print(a)
#     for i in a:
#         pro = Recommend_show()
#         pro.img = i
#         pro.abstract = 'recommend_mall'
#         pro.save()
#
#
# if __name__ == "__main__":
#     main()
#     print('Done!')

import pymysql
import json


db = pymysql.Connect(host='127.0.0.1', database='phonemall', user='root', password='xiaotian1234')

cursor = db.cursor()

with open(r'pro_data/4.txt', 'r', encoding="gbk") as f:
    a = f.readlines()

    db.begin()
    for i in a:
        # img, name, price = i.split(',')
        # print(img, name, int(price))
        i = i.strip()
        print(i)
        try:
            cursor.execute("insert into app_recommend_show(img, sign) values ('%s', '%s')" % (i, 'big_show'))

        except Exception as e:
            print(e)
            db.rollback()
    db.commit()
    db.close()

print('ok')