from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions
import os

from time import sleep	
#mở chrome lên và đăng nhập vào wordpress
browser = webdriver.Chrome()
browser.get('http://oldwp.nghiahsgs.com/wp-admin')

#điền ID và password
ID = browser.find_element_by_css_selector('.input')
ID.click()
ID.send_keys('nghiahsgs')

passWord= browser.find_element_by_id('user_pass')
passWord.click()
passWord.send_keys('261997')
passWord.send_keys(Keys.RETURN)

#click vào chữ Media
media = WebDriverWait(browser,20).until(expected_conditions.element_to_be_clickable((By.XPATH,'/html/body/div[1]/div[1]/div[2]/ul/li[4]/a/div[3]')))
media.click()

#click add new
add_new = WebDriverWait(browser,20).until(expected_conditions.element_to_be_clickable((By.XPATH,'/html/body/div[1]/div[2]/div[2]/div[1]/div[3]/a')))
add_new.click()

#upload file
# upload = browser.find_element_by_xpath('''/html/body/div[5]/input''')
# path = os.getcwd() + r"\photo_2021-07-10_10-25-46.jpg"
# print(path)
# upload.send_keys(path)

#click vào ảnh vừa up lên mới nhất
sleep(2)
anh_vua_up= browser.find_elements_by_css_selector('.centered img')[0].get_attribute('src')
print(anh_vua_up)

