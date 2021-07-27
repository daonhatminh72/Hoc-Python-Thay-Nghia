import re
import requests
from time import sleep
import xlsxwriter

openFile = open('link youtube list.txt','r')
getLink = openFile.readlines()
openFile.close()
dirLink = []
for i in getLink:
	urlInput = i

	url = 'https://www.y2mate.com/mates/en57/analyze/ajax'

	headers = {
		'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
	}
	dataPost = {
		'url': urlInput,
		'q_auto': 0,
		'ajax': 1,
	}
	response = requests.post(url,data=dataPost,headers = headers).text
	response = response.replace('\\','')
	
	sleep(0.5)
	#Lấy chất lượng cao nhất
	fquality = re.search('data-fquality="(.+?)"',response)
	print(fquality.group(1))
	_id = re.search('k__id = "(.+?)"',response)
	v_id = re.search('data-id="(.+?)"',response)

	url = 'https://www.y2mate.com/mates/convert'
	dataPost = {
		'type': 'youtube',
		'_id' : _id.group(1),
		'v_id': v_id.group(1),
		'ajax': 1,
		'ftype': 'mp4',
		'fquality': fquality.group(1)
	}
	response = requests.post(url,data = dataPost,headers = headers).text
	response = response.replace('\\','')
	sleep(0.5)
	path = re.search('href="(.+?)"',response)
	print(path.group(1))
	dirLink.append(path.group(1))	
#Viết ra excel 
col = 0
row = 0
wb = xlsxwriter.Workbook('result get link utube.xlsx')
ws = wb.add_worksheet()
for i in range(len(dirLink)):
	ws.write(row,col,getLink[i])
	ws.write(row,(col+1),dirLink[i])
	row +=1
wb.close()

