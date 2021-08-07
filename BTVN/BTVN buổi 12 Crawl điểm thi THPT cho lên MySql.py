import requests
import xlsxwriter
from bs4 import BeautifulSoup
from peewee import *
import threading

#Liên lạc với localhost
host = 'localhost'
db_name = 'hoc python thay nghia'
db_username = 'root'
db_pass = ''

db=MySQLDatabase(db_name,host=host,user=db_username,passwd = db_pass)
class btvn_bai12(Model):
	SBD = CharField()
	Toán = FloatField()
	Văn = FloatField()
	Anh = FloatField()
	is_run = IntegerField()
	class Meta:
		database = db
check_ma_thi_sinh = []

#request lấy dữ liệu điểm thi 
def get_diem_thi(ma_tinh_thanh_2,ma_thi_sinh_2):
	global toan
	global van
	global anh
	global res
	global check_ma_thi_sinh
	url = f'https://diemthi.vnanet.vn/Home/SearchBySobaodanh?code={ma_tinh_thanh_2}{ma_thi_sinh_2}&nam=2021'
	headers = {
		'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36'
	}	
	try:
		res = requests.get(url,headers = headers).json()
	except Exception as e:
		print(e)	
	#Nếu array check ma thí sinh mà có value bên trong nhưng vòng lặp này lại trả về kết quả tức là đứt chuỗi liên tiếp thì khởi tạo lại array giá trị rỗng
	if (len(check_ma_thi_sinh) >=1) and (len(res['result']) >0):
		check_ma_thi_sinh = []
	if len(res['result']) <1:
		check_ma_thi_sinh.append('Không tìm thấy kết quả cho mã thí sinh của tỉnh này')
		return	

	#lấy ra giá trị cần lấy
	try:
		toan = res['result'][0]['Toan']
		van = res['result'][0]['NguVan']	
		anh = res['result'][0]['NgoaiNgu']
	except Exception as e:
		print(e)
		toan = -1
		van = -1
		anh = -1

thread_number = 300	
data_source = []

def crawl_diem_thi(create_thread):
	
	global sbd		
	for ma_tinh_thanh in range(1,65): #64 tỉnh thành	
		for ma_thi_sinh in range(1+create_thread,999999,thread_number): # chỗ này thấy lấy chưa triệt để lắm vì có thể có trên 1tr thí sinh

			ma_tinh_thanh_2 = f'{ma_tinh_thanh:02d}'
			ma_thi_sinh_2 = f'{ma_thi_sinh:06d}'
			sbd = f'{ma_tinh_thanh_2}{ma_thi_sinh_2}'
			print(sbd)
			get_diem_thi(ma_tinh_thanh_2,ma_thi_sinh_2)

			# nếu tìm 5 lần liên tiếp mà ko thấy mã thí sinh (của tỉnh x ) thì chắc là hết rồi, break		
			if len(check_ma_thi_sinh) > 5: 
				break

			data = {'SBD': sbd,'Toán':toan,'Văn':van,"Anh":anh}
			data_source.append(data)

for create_thread in range(thread_number):
	new_thread = threading.Thread(target=crawl_diem_thi,args=(create_thread,))
	new_thread.start()
while threading.active_count() >1:
	pass	


count = 0
for batch in chunked(data_source,10000):
	count+=1
	print(count)
	btvn_bai12.insert_many(data_source).execute()				
