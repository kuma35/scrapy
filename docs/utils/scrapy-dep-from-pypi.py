# -*- coding: utf-8 -*-
# https://qiita.com/tmurakami1234/items/b407dc4cc558564882bf より
import requests
from pprint import pprint # 出力整形のためにインポート

package = 'scrapy'
version = '2.5'
url = f'https://pypi.org/pypi/{package}/{version}/json'
# バージョンを指定しないなら
# url = f'https://pypi.org/pypi/{package}/json'

json = requests.get(url).json()
pprint(json['info'])
