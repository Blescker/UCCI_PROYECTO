# Generated by Django 5.1.1 on 2024-09-30 02:48

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('psychoshield', '0002_remove_test_id_creador'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='question',
            name='peso',
        ),
    ]
