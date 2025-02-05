import schedule
import os

def my_job():
    os.system("gold_price.py")


# schedule.every(5).minutes.do(my_job)
# schedule.every().day.at("10:30").do(my_job)
schedule.every(2).seconds.do(my_job)

while True:
    schedule.run_pending()