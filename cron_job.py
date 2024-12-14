import schedule
import os

def my_job():
    os.system("VietComBankData.py")


schedule.every(20).minutes.do(my_job)
# schedule.every().day.at("10:30").do(my_job)
# schedule.every(20).seconds.do(my_job)

while True:
    schedule.run_pending()