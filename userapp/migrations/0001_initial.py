# Generated by Django 2.0.6 on 2019-05-22 11:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='TBook',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('book_name', models.CharField(blank=True, max_length=40, null=True)),
                ('dangdang_price', models.FloatField(blank=True, null=True)),
                ('market_price', models.FloatField(blank=True, null=True)),
                ('sales', models.IntegerField(blank=True, null=True)),
                ('storage', models.BigIntegerField(blank=True, null=True)),
                ('pushish_time', models.DateField(blank=True, null=True)),
                ('editer_commond', models.IntegerField(blank=True, null=True)),
                ('anthor', models.CharField(blank=True, max_length=40, null=True)),
                ('pics', models.CharField(blank=True, max_length=100, null=True)),
            ],
            options={
                'db_table': 't_book',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TCategory',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('category_name', models.CharField(blank=True, max_length=40, null=True)),
                ('parent_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 't_category',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TOrder',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('order_price', models.FloatField(blank=True, null=True)),
                ('create_time', models.DateTimeField(blank=True, null=True)),
                ('order_id', models.IntegerField(blank=True, null=True)),
                ('receive_address', models.CharField(blank=True, max_length=40, null=True)),
            ],
            options={
                'db_table': 't_order',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TOrderitem',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('book_name', models.CharField(blank=True, max_length=40, null=True)),
                ('sub_total', models.FloatField(blank=True, null=True)),
            ],
            options={
                'db_table': 't_orderitem',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TUser',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('email', models.CharField(blank=True, max_length=40, null=True)),
                ('username', models.CharField(blank=True, max_length=40, null=True)),
                ('password', models.CharField(blank=True, max_length=100, null=True)),
                ('status', models.CharField(blank=True, max_length=40, null=True)),
            ],
            options={
                'db_table': 't_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TAddress',
            fields=[
                ('id', models.ForeignKey(db_column='id', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='userapp.TOrder')),
                ('recever', models.CharField(blank=True, max_length=40, null=True)),
                ('receve_address', models.CharField(blank=True, max_length=40, null=True)),
                ('zip_code', models.CharField(blank=True, max_length=6, null=True)),
                ('tel', models.CharField(blank=True, max_length=40, null=True)),
                ('phone', models.CharField(blank=True, max_length=40, null=True)),
            ],
            options={
                'db_table': 't_address',
                'managed': False,
            },
        ),
    ]
