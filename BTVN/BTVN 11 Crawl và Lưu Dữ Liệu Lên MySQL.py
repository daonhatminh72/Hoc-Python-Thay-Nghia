import requests
import xlsxwriter
from bs4 import BeautifulSoup
from peewee import *

#Lấy số page trong website
url = f'https://nghiahsgs.com'
dayLaHeaders = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
}
res = requests.get(url,headers=dayLaHeaders)
soup = BeautifulSoup(res.text,'lxml')

aTag = soup.find_all('a',class_ = 'page-numbers')
page_number = int(aTag[1].text)+1
#>>>> aTag[1].text = 11

#Lấy ra danh sách link và tên bài viết
link = []
title = []

for i in range(page_number):
    url2 = f'https://nghiahsgs.com/page/{i}/'
    data = requests.get(url2,headers=dayLaHeaders)
    soup2 = BeautifulSoup(data.text,'lxml')
    listH2 = soup2.find_all('h2',class_ = 'entry-title')
    for j in listH2:
        link.append(j.a.get('href'))
        title.append(j.a.text)

finalLink = set(link)
finalTitle = set(title)
finalResult = zip(finalLink,finalTitle)

#Liên lạc với LocalHost
host = 'localhost'
db_name = 'hoc python thay nghia'
db_user = 'root'
db_pass = '123456789'
db = MySQLDatabase(db_name,host = host, user=db_user,passwd =db_pass)

#Tạo Class tương tác với table trong database ở trên
class btvn_bai11(Model):
    title = TextField()
    link = TextField()
    class Meta:
        database = db
#điền thông tin vào data base
for i in range(len(finalLink)):
    title1 = finalTitle[i]
    link1 = finalLink[i]
    instance = btvn_bai11(title = title1,link = link1)
    instance.save()
