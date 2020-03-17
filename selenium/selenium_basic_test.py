#!/bin/python

from pyvirtualdisplay import Display
from selenium.webdriver.chrome.options import Options
from selenium import webdriver

if __name__ == "__main__":
    chrome_options = Options()
    display = Display(visible = 0, size = ())
    display.start()

    chrome_options = Options()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('disable~~')

    driver = webdriver.Chrome(executable_path='/usr/local/bin/chromedriver', chrome_options=chrome_options)
    driver.get('http://www.google.com')
    element = driver.find_element_by_tag_name('body')
    element_png = element.screenshot_as_png
    with open('test_google.png', 'wb') as file:
        file.write(element_png)
    driver.quit() 