# Generated by Django 4.2.3 on 2023-09-12 04:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Forum', '0004_alter_topicgroupuser_group_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='image_url',
            field=models.URLField(blank=True, null=True),
        ),
    ]
