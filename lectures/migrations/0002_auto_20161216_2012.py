# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2016-12-16 20:12
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lectures', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='lecture',
            options={'ordering': ['priority', 'id'], 'verbose_name': 'Lecture', 'verbose_name_plural': 'Lectures'},
        ),
        migrations.AddField(
            model_name='lecture',
            name='priority',
            field=models.IntegerField(default=99, help_text='Set order on all lectures page'),
        ),
    ]
