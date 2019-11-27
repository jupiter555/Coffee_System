from db_coffee_dao import *
from db_helper import *
import time

def main():
    db_helper = DBHelper()  #实例化一个数据访问对象
    coffeeDao = CoffeeDao(db_helper)

    while True:
        result = coffeeDao.query_machine_last_send()
        for i in result:
            if i[0] >= 180:
                print("编号是%d的咖啡机已经超过300s没有反馈状态，可能存在故障" % int(i[1]))
                alert_msg = "%d Machine have no recv msg" % int(i[1])
                result = coffeeDao.insert_machine_warnings(int(i[1]), alert_msg)
        
        time.sleep(120)

if __name__ == "__main__":
    main()

