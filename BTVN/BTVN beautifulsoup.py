import requests
import xlsxwriter
from bs4 import BeautifulSoup

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
#Viết ra excel
createWB = xlsxwriter.Workbook('result.xlsx')
sheet = createWB.add_worksheet()
row = 0 
col = 0 
for n,v in finalResult:
	sheet.write(row,col,n)
	sheet.write(row,col+1,v)
	row+=1
createWB.close()	
