import tkinter
from tkinter import *
from tkinter.ttk import *

import csv
import fileinput

import time
from datetime import datetime
import modbus_tk.modbus_tcp as mt
import modbus_tk.defines as md

import pandas as pd

# 定义输出函数
def plus_connect11():
    # canshu()
    n1 = e1.get()  # 获取输入框1的值
    n2 = e2.get()  # 获取输入框2的值

    start_num1=start1.getint(start1.get())
    end_num1=end1.getint(end1.get())
    count_num1=count1.getint(count1.get())
    state1_state=state1.getint(state1.get())
    ID1=Slave_ID.getint(Slave_ID.get())
    t2.delete(1.0, 'end')  # 清除文本框内容
    # # print(type(n1)) #字符串默认str
    master = mt.TcpMaster(n1, int(n2))
    master.set_timeout(15.0)
    # t.insert('insert', int(n1)+int(n2))  # 将结果添加到文本框显示
    if state1_state==1:
        for i in range(int(count_num1)):
            Coils_value = master.execute(slave=ID1, function_code=md.READ_COILS, starting_address=start_num1,
                                         quantity_of_x=end_num1-start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            time1 = time.localtime()
            current_time = time.strftime("%H:%M:%S", time1)
            t2.insert('end',current_time)
            t2.insert('end', ' 第')
            t2.insert('end',i+1)
            t2.insert('end','次\t')
            t2.insert('insert', Coils_value)  # 将结果添加到文本框显示
            t2.insert('end','\n')
            # frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)#间隔1s读取一次状态
        return Coils_value

    if state1_state==2:
        for i in range(int(count_num1)):
            Discrete_Input= master.execute(slave=ID1, function_code=md.DISCRETE_INPUTS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            time1 = time.localtime()
            current_time = time.strftime("%H:%M:%S", time1)
            t2.insert('end',current_time)
            t2.insert('end', ' 第')
            t2.insert('end', i + 1)
            t2.insert('end', '次\t')
            t2.insert('insert', Discrete_Input)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            # frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态
        return Discrete_Input

    if state1_state==3:
        for i in range(int(count_num1)):
            Holding_Register = master.execute(slave=ID1, function_code=md.READ_HOLDING_REGISTERS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            time1 = time.localtime()
            current_time = time.strftime("%H:%M:%S", time1)
            t2.insert('end',current_time)
            t2.insert('end', ' 第')
            t2.insert('end', i + 1)
            t2.insert('end', '次\t')
            t2.insert('insert', Holding_Register)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            # frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态
        return Holding_Register

    if state1_state==4:
        for i in range(int(count_num1)):
            Input_Register = master.execute(slave=ID1, function_code=md.READ_INPUT_REGISTERS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            time1 = time.localtime()
            current_time = time.strftime("%H:%M:%S", time1)
            t2.insert('end',current_time)
            t2.insert('end', ' 第')
            t2.insert('end', i + 1)
            t2.insert('end', '次\t')
            t2.insert('insert', Input_Register)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            # print("len is",len(Input_Register))
            # print("value is",Input_Register)
            # for j in range(len(Input_Register)):
            #     write_ID=Input_Register[j]
        return Input_Register

# 定义界面显示窗口
window = tkinter.Tk()
window.title('AUBO_Modbus_Tool V 2.2')
window.geometry('800x600')

frame1 = tkinter.Frame(window)
frame1.pack()
frame1_left = tkinter.Frame(frame1)

# 上下滑动窗口
xscrollbar = Scrollbar(window, orient=HORIZONTAL)
yscrollbar = Scrollbar(window)

# 定义输入框1作为IP地址
# l1 = tkinter.Label(window, text='输入IP')
l1 = tkinter.Label(frame1_left, text='输入IP',width=0)
l00=l1.grid(row=0,column=0)
# l1.pack()
e1 = tkinter.Entry(frame1_left, width=20)
e01=e1.grid(row=0,column=1)
# e1.pack(side=tkinter.LEFT)

# 定义输入框2作为端口号
# l2 = tkinter.Label(window, text='输入Port')
l2 = tkinter.Label(frame1_left, text='输入Port',width=0)
l10 = l2.grid(row=1,column=0)

# l2.pack()
e2 = tkinter.Entry(frame1_left, width=20)
# e2.pack(side=tkinter.RIGHT)
e11 = e2.grid(row=1,column=1)

# 自由控制地址输入输出联合
start = tkinter.Label(frame1_left, text='起始地址',width=0)
l011=start.grid(row=0,column=2)
# l1.pack()
start1 = tkinter.Entry(frame1_left, width=8)
# print(type(e_start.get()))
# start_num = float(e011.get())
e_start1=start1.grid(row=0,column=3)

e_end = tkinter.Label(frame1_left, text='终止地址',width=0)
l012=e_end.grid(row=1,column=2)
# l1.pack()
end1 = tkinter.Entry(frame1_left, width=8)
e012=end1.grid(row=1,column=3)
end_num=end1.get()
# end_num=int(e12.get())

s12 = tkinter.Label(frame1_left, text='统计次数',width=0)
s012=s12.grid(row=2,column=2)
# l1.pack()
count1 = tkinter.Entry(frame1_left, width=8)
# count_num=se12.getint()
# count_num=int(se012.get())
se012=count1.grid(row=2,column=3)

l3 = tkinter.Label(frame1_left, text='Slave ID')
l3.grid(row=2,column=0)
# l3.pack()
Slave_ID = tkinter.Entry(frame1_left, width=20)
Slave_ID.grid(row=2,column=1)

bc3 = tkinter.Label(frame1_left, text='类型选择')
bc3.grid(row=3,column=0)

state1 = tkinter.Entry(frame1_left, width=20)
state1.grid(row=3,column=1)

b3 = tkinter.Button(frame1_left, text='状态显示',
                    command=plus_connect11,width=10)
b3.grid(row=3,column=2)

t2 = tkinter.Text(window, state='normal', width=30, height=10)
xscrollbar.pack(side=BOTTOM, fill=X)
yscrollbar.pack(side=RIGHT, fill=Y)
t2.pack(fill=BOTH,expand=True)
xscrollbar.config(command=t2.xview)
yscrollbar.config(command=t2.yview)

t2.config(xscrollcommand=xscrollbar.set)
t2.config(yscrollcommand=yscrollbar.set)
t2.pack()

leixing1 = tkinter.Label(frame1_left, text='1 Coil Status',width=20)
leixing1.grid(row=0,column=4)
leixing2 = tkinter.Label(frame1_left, text='2 Input Status',width=20)
leixing2.grid(row=1,column=4)
leixing3 = tkinter.Label(frame1_left, text='3 Holding Register',width=20)
leixing3.grid(row=2,column=4)
leixing4 = tkinter.Label(frame1_left, text='4 Input Register',width=20)
leixing4.grid(row=3,column=4)

b2 = tkinter.Button(frame1_left, text='退出软件', command=window.quit, width=10)
b2.grid(row=3,column=3)



def write_csv1():

    results=plus_connect11()

    with open('save_data1.csv', 'w', encoding='utf-8', newline='') as f:
        count_num=list(range(1,len(results)+1,1))
        writer = csv.writer(f)
        writer.writerow(count_num)
        writer.writerow(results)


# 保存文件
saved = tkinter.Button(window, text='保存文件', command=write_csv1)
saved.pack(pady=10,side=BOTTOM)

if __name__ == '__main__':

    # plus_connect11()
    frame1_left.pack(side=tkinter.LEFT)
    # 显示主窗口
    window.mainloop()



# csv_writer1() 测试程序
'''
import csv
import fileinput

def csv_writer():
    """写入csv文件"""
    headers = [("编号", "课程", "讲师")]
    rows = [
        (1, 'python', 'eason'),
        (2, 'C#', 'jeason'),
        (3, 'JAVA', 'peason'),
        (4, 'c++', 'weason'),
    ]
    with open('my_course2.csv', 'a+', encoding='utf-8', newline='') as f:
        writer = csv.writer(f)
        # 写入行首
        writer.writerows(headers)
        #逐行写入
        writer.writerows(rows)
        # https://blog.csdn.net/m0_51623564/article/details/127356720

def csv_writer1():
    sa = (6, 1, 4, 4, 2, 5)
    with open('my_course2.csv', 'w', encoding='utf-8', newline='') as f:
        fj=list(range(1,len(sa)+1,1))
        writer = csv.writer(f)
        writer.writerow(fj)
        writer.writerow(sa)

        # for i in range(len(sa)):
            # headers = i
            # rows =sa[i]
            # writer.writerows(str(fj[i]))  # 写入行首
            # writer.writerows(str(sa[i]))
            # writer.writerows(str(rows))   #逐行写入
            # writer.writerow(str(fj[i]))  # 写入行首
            # writer.writerow(str(sa[i]))

        fileinput.close()
if __name__ == '__main__':
    csv_writer1()
'''






