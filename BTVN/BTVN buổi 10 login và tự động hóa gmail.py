from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions
import xlsxwriter
email_list = []
title_list = []
content_list = []

#Tạo và tự login gmail lần đầu tiên, lần sau dùng đúng path này mở và auto thôi 
def create_chrome_cmdLine():
	chrome_exe_path = r"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	user_data_path = r'C:\Users\minh7\AppData\Local\Google\Chrome\User Data'
	name_user = 'btvnbuoi10'

	command_line = f'"{chrome_exe_path}" --user-data-dir="{user_data_path}\\{name_user}" --first-run'
	print(command_line)

#Dùng selenium login gmail và tự động đọc mail
def auto_gmail():
	#login Info 
	# chrome_exe_path = r"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	user_data_path = r'C:\Users\minh7\AppData\Local\Google\Chrome\User Data'
	name_user = 'btvnbuoi10'

	#login chrome profile vừa tạo ở trên (sau khi đã login tay gmail)
	options = webdriver.ChromeOptions()
	options.add_argument(f'''user-data-dir={user_data_path}\\{name_user}''') # Lưu ý user-data-dir={user_data_path}\\{name_user} ko có "" cho đường path sau dấu = mới chạy đc
	options.add_experimental_option("detach", True) #option này để giữ broswer mở sau khi thực hiện xong lệnh(không bị đóng)

	broswer = webdriver.Chrome(executable_path=r"C:\Users\minh7\OneDrive\Máy tính\chromedriver.exe", chrome_options=options) # lưu ý path là cho chromedriver , ko phải chrome
	broswer.get('https://gmail.com')

	#đợi web load xong
	wait = WebDriverWait(broswer,50).until(expected_conditions.element_to_be_clickable((By.CSS_SELECTOR,'div.gb_uc svg')))
	#Click vào mail dầu tiên
	all_first_page_email = broswer.find_elements_by_css_selector("div.Cp div table tbody tr")
	# i = 2
	for i in range(0,len(all_first_page_email)):
		print('i=',i)
		email = all_first_page_email[i].find_element_by_css_selector("span.bA4 span").get_attribute('email')
		email_list.append(email)
		title = all_first_page_email[i].find_element_by_css_selector("span.bog span").text
		title_list.append(title)
		content = all_first_page_email[i].find_element_by_css_selector("span.y2").get_attribute("innerText")
		content_list.append(content)
	broswer.close()

	wb = xlsxwriter.Workbook('btvnbai10.xlsx')
	ws = wb.add_worksheet()
	col = 0 
	row = 0 
	for j in range(len(email_list)):
		ws.write(row,col,email_list[j])
		ws.write(row,col+1,title_list[j])
		ws.write(row,col+2,content_list[j])
		row+=1
	wb.close()	


auto_gmail()