from django.db import models

class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=100)
    email = models.EmailField()
    icon = models.FileField()
