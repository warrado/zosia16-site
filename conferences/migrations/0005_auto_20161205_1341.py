# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2016-12-05 13:41
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('conferences', '0004_auto_20161127_1127'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userpreferences',
            name='organization',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.Organization'),
        ),
    ]
