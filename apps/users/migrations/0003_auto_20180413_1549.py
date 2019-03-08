# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2018-04-13 15:49
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_auto_20180413_1539'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='auth',
            name='premission',
        ),
        migrations.AddField(
            model_name='auth',
            name='pre_auth',
            field=models.IntegerField(choices=[(0, '\u8d85\u7ea7\u7ba1\u7406\u5458'), (1, '\u67e5\u770b'), (2, '\u67e5\u770b, \u7f16\u8f91'), (3, '\u67e5\u770b, \u7f16\u8f91, \u5220\u9664')], default=1, verbose_name='\u6743\u9650\u7ea7\u522b'),
        ),
    ]
