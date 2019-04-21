from django.db import models

class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)
    email = models.EmailField()
    icon = models.FileField()

    token = models.CharField(max_length=100)
    active = models.BooleanField(default=False)


class Recommend_show(models.Model):
    img = models.CharField(max_length=200)
    sign = models.CharField(max_length=20)


# class Main(models.Model):
#     name = models.CharField(max_length=20)
#     price = models.IntegerField()
#     img = models.CharField(max_length=200)


class Recommend_phone(models.Model):
    name = models.CharField(max_length=20)
    price = models.IntegerField()
    img = models.CharField(max_length=200)
    # class Meta():
    #     db_table = 'recommend_phone'


class Big_show(models.Model):
    name = models.CharField(max_length=50)
    price = models.IntegerField()
    img = models.CharField(max_length=200)
    # class Meta():
    #     db_table = 'big_show'


class Goods(models.Model):
    name = models.CharField(max_length=20)
    price = models.IntegerField()
    img = models.CharField(max_length=200)
    category = models.CharField(max_length=20)
    # class Meta():
    #     db_table = 'gooods'


class Cart(models.Model):
    user = models.ForeignKey(User)
    goods = models.ForeignKey(Goods)
    num = models.IntegerField(default=1)
    is_sselect = models.BooleanField(default=True)




