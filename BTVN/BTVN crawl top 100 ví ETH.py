import requests
import xlsxwriter
import bs4
import re
stt = []
address = []
nameTag = []
balance = []
percentage = []
txnCount = []

page_number = 1
soHolderMuonLay = 333

url = f'https://etherscan.io/accounts/{page_number}'
headers = {
	'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
}
res = requests.get(url,headers = headers)
res = res.text

soup = bs4.BeautifulSoup(res,'lxml')

#Tìm last page theo hệ cồng kềnh
for k in soup.find_all('a',class_="page-link"):
	if k.get_text() == "Last Last":
		lastPage = (int(re.search('href="/accounts/(.+?)"',str(k)).group(1))+1)
		break
#lấy cái bảng trên url ra		
for n in range(1,lastPage):
	if len(stt) >= soHolderMuonLay:
			break
	print(n)
	page_number = n

	url = f'https://etherscan.io/accounts/{page_number}'
	headers = {
		'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
	}
	res = requests.get(url,headers = headers)
	res = res.text

	soup = bs4.BeautifulSoup(res,'lxml')

	tbody = soup.find('tbody')
	tr = tbody.find_all("tr")
	print(len(stt))
	
	for td in tr:
		if len(stt) >= soHolderMuonLay:
			break
		stt.append(td.find_all('td')[0].get_text())
		address.append(td.find_all('td')[1].get_text())
		nameTag.append(td.find_all('td')[2].get_text())
		balance.append(td.find_all('td')[3].get_text())
		percentage.append(td.find_all('td')[4].get_text())
		txnCount.append(td.find_all('td')[5].get_text())
					
		
wb = xlsxwriter.Workbook('top ETH Wallet Holder.xlsx')
ws = wb.add_worksheet()

final = zip(stt,address,nameTag,balance,percentage,txnCount)
col = 0
row = 1
ws.write('A1','STT')
ws.write('B1','Address')
ws.write('C1','Name Tag')
ws.write('D1','Balance')
ws.write('E1','Percentage')
ws.write('F1','Txn Count')
for q,w,e,r,t,y in final:
	ws.write(row,col,q)
	ws.write(row,col+1,w)
	ws.write(row,col+2,e)
	ws.write(row,col+3,r)
	ws.write(row,col+4,t)
	ws.write(row,col+5,y)
	row +=1
wb.close()


