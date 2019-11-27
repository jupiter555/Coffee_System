from django.apps import AppConfig
import pymysql
import os

pymysql.install_as_MySQLdb()
default_app_config = 'manage.ManageConfig'

def get_current_app_name(_file):
    return os.path.split(os.path.dirname(_file))[-1]

class ManageConfig(AppConfig):
    print('Manage.config()')
    name = get_current_app_name(__file__)
    verbose_name = '网站首页'
