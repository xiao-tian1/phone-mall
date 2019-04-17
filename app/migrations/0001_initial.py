# -*- coding: utf-8 -*-
# Generated by Django 1.11.18 on 2019-04-17 02:34
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=20)),
                ('password', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('icon', models.FileField(upload_to='')),
            ],
        ),
    ]
