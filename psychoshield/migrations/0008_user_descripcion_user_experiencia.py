# Generated by Django 5.1.1 on 2024-10-05 19:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('psychoshield', '0007_testresult_sintomatologia_presentada'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='descripcion',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='user',
            name='experiencia',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
