import schedule
import os

def my_job():
    # os.system("crawl_main.py")
    print("helu")

# schedule.every(15).minutes.do(my_job)
# schedule.every().day.at("10:30").do(my_job)
schedule.every(5).seconds.do(my_job)

while True:
    schedule.run_pending()