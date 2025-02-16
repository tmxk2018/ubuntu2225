# from tkinter import *
# #主窗口
# win = Tk()
# win.config(bg='#87CEEB')
# win.title("C语言中文网")
# win.geometry('500x350+300+300')
# # win.iconbitmap('C:/Users/Administrator/Desktop/C语言中文网logo.ico')
# #在窗口内创建按钮，以表格的形式依次排列
# for i in range (10):
#     for j in range (10):
#         Button (win, text=" (" + str(i) + ","+ str(j)+ ")",bg='#D1EEEE') .grid(row=i,column=j)
# # 在第5行第11列添加一个Label标签
# Label(win,text="C语言中文网",fg='blue',font=('楷体',12,'bold')).grid(row =4,column=11)
# #开始窗口的事件循环
# win. mainloop()
#
# https://blog.csdn.net/qq_41854911/article/details/122697073
# http://c.biancheng.net/tkinter/

'''
from tkinter import *
#主窗口
win = Tk()
win.title("C语言中文网")
# win.iconbitmap('C:/Users/Administrator/Desktop/C语言中文网logo.ico')
#创建一个frame窗体对象，用来包裹标签
frame = Frame (win, relief=SUNKEN, borderwidth=2, width=450, height=250)
# 在水平、垂直方向上填充窗体
frame. pack (side=TOP, fill=BOTH, expand=1)
# 创建 "位置1"
Label1 = Label ( frame, text="位置1",bg='blue',fg='white')
# 使用 place,设置第一个标签位于距离窗体左上角的位置（40,40）和其大小（width，height）
# 注意这里（x,y）位置坐标指的是标签左上角的位置（以NW左上角进行绝对定位，默认为NW）
Label1.place (x=40,y=40, width=60, height=30)
# 设置标签2
Label2 = Label (frame, text="位置2",bg='purple',fg='white')
# 以右上角进行绝对值定位，anchor=NE，第二个标签的位置在距离窗体左上角的(180，80)
Label2.place(x=180,y=80, anchor=NE, width=60, height=30)
# 设置标签3
Label3 = Label (frame, text="位置3",bg='green',fg='white')
# 设置水平起始位置相对于窗体水平距离的0.6倍，垂直的绝对距离为80，大小为60，30
Label3.place(relx=0.6,y=80, width=60, height=30)
# 设置标签4
Label4 = Label (frame, text="位置4",bg='gray',fg='white')
# 设置水平起始位置相对于窗体水平距离的0.01倍，垂直的绝对距离为80，并设置高度为窗体高度比例的0.5倍，宽度为80
Label4.place(relx=0.01,y=80,relheight=0.4,width=80)
#开始事件循环
win. mainloop()



# https://blog.csdn.net/qq_41854911/article/details/122697073
import tkinter as tk
win = tk.Tk()
win.title("C语言中文网")
win.geometry('400x400+200+200')
# win.iconbitmap('C:/Users/Administrator/Desktop/C语言中文网logo.ico')
# 创建一个水平方向的 panedwindow，并添加到主窗口中，默认为水平方向
p_window1 = tk.PanedWindow(win)
p_window1.pack(fill=tk.BOTH, expand=1)
# 在窗口区的左侧添加两个水平方向的 Label
left1 =tk. Label(p_window1, text='C语言中文网', bg='#7CCD7C', width=10,font=('微软雅黑',15))
p_window1.add(left1)
left2 =tk.Label(p_window1, text='网址：c.biancheng.net', bg='#9AC0CD', width=10,font=('微软雅黑',15))
p_window1.add(left2)
# 创建一个垂直方向的panedwindow,并添加一个手柄，设置分割线样式
p_window2 = tk.PanedWindow(orient=tk.VERTICAL,showhandle=True,sashrelief='sunken')
# 添加到 p_window1中
p_window1.add(p_window2)
# 在 p_window2 中添加两个垂直方向的标签
top_label =tk. Label(p_window2, text='教程', bg='#7171C6', height=8,font=('宋体',15))
p_window2.add(top_label)
bottom_label =tk. Label(p_window2, text='辅导班', bg='#8968CD',font=('宋体',15))
p_window2.add(bottom_label)
win.mainloop()

'''


import tkinter as tk
win = tk.Tk()
win.title("C语言中文网")
win.geometry('800x350+200+200')
# 定义第一个容器，使用 labelanchor ='w' 来设置标题的方位
frame_left = tk.LabelFrame(win, text="教程", labelanchor="w",bg='#5CACEE')
# 使用 place 控制 LabelFrame 的位置
frame_left.place(relx=0.2, rely=0.2, relwidth=0.2, relheight=0.5)
label_1 = tk.Label(frame_left, text="C语言")
label_1.place(relx=0.2, rely=0.2)
label_2 = tk.Label(frame_left, text="Python")
label_2.place(relx=0.6, rely=0.2)
label_3 = tk.Label(frame_left, text="Java")
label_3.place(relx=0.2, rely=0.6)
label_4 = tk.Label(frame_left, text="C++")
label_4.place(relx=0.6, rely=0.6)
# 定义第二个容器，使用 labelanchor ='w' 来设置标题的方位
frame_right = tk.LabelFrame(win, text="辅导班", labelanchor="w",bg='#66CDAA')
# 使用 place 控制 LabelFrame 的位置
frame_right.place(relx=0.5, rely=0.2, relwidth=0.3, relheight=0.6)
label_1 = tk.Label(frame_right, text="C语言辅导班")
label_1.place(relx=0.2, rely=0.2)
label_2 = tk.Label(frame_right, text="数据结构")
label_2.place(relx=0.6, rely=0.2)
label_3 = tk.Label(frame_right, text="C++辅导班")
label_3.place(relx=0.2, rely=0.6)
label_4 = tk.Label(frame_right, text="Python答疑")
label_4.place(relx=0.6, rely=0.6)
win.mainloop()



'''
import tkinter
import tkinter.messagebox

# https://www.jianshu.com/p/58b047f3985d
# 用户登录验证
def login():
    name = entryName.get()
    pwd = entryPwd.get()
    if name == 'admin' and pwd == '123456':
        tkinter.messagebox.showinfo(title='userlogin', message='ok')
    else:
        tkinter.messagebox.showerror(title='userlogin', message='Error')
# 清空用户输入的用户名和密码
def cancel():
    varName.set('')
    varPwd.set('')


window = tkinter.Tk()
window.title('my window')
window.geometry('200x120')
varName = tkinter.StringVar(value='')
varPwd = tkinter.StringVar(value='')
# 创建标签
labelName = tkinter.Label(window, text='User Name', justify=tkinter.RIGHT, width=80)
# 将标签放到窗口上
labelName.place(x=10, y=5, width=80, height=20)
# 创建文本框，并设置关联的变量
entryName = tkinter.Entry(window, width=80, textvariable=varName)
entryName.place(x=100, y=5, width=80, height=20)

labelPwd = tkinter.Label(window, text='User Pwd:', justify=tkinter.RIGHT, width=80)
labelPwd.place(x=10, y=30, width=80, height=20)
# 创建密码文本框
entryPwd = tkinter.Entry(window, show='*', width=80, textvariable=varPwd)
entryPwd.place (x=100, y=30, width=80, height=20)
# 创建按钮组件，同时设置按钮事件处理函数
buttonOk = tkinter.Button(window, text='Login', command=login)
buttonOk.place(x=30, y=70, width=50, height=20)
buttonCancel = tkinter.Button(window, text='Cancel', command=cancel)
buttonCancel.place(x=90, y=70, width=50, height=20)
# 启动消息循环
window .mainloop()
'''



# 测试modbus4321.exe源码
'''
import tkinter
from tkinter import *
from tkinter.ttk import *

import time
import modbus_tk.modbus_tcp as mt
import modbus_tk.defines as md

# 定义界面显示窗口
window = tkinter.Tk()
window.title('my window 12345')
window.geometry('800x600')

frame1=tkinter.Frame(window)
frame1.pack()
frame1_left=tkinter.Frame(frame1)

# 上下滑动窗口
xscrollbar=Scrollbar(window, orient=HORIZONTAL)
yscrollbar=Scrollbar(window)

# 定义输出函数
def plus_connect(start_num,end_num,count_num):
    n1 = e1.get()  # 获取输入框1的值
    n2 = e2.get()  # 获取输入框2的值

    print("start is", type(start_num))
    # print("start isss", start_num)
    start_num1=int(start_num)
    end_num1=int(end_num)
    count_num1=int(count_num)

    t2.delete(1.0, 'end')  # 清除文本框内容
    # # print(type(n1)) #字符串默认str
    master = mt.TcpMaster(n1, int(n2))
    master.set_timeout(15.0)
    # t.insert('insert', int(n1)+int(n2))  # 将结果添加到文本框显示

    for i in range(count_num1):
        Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=start_num1,
                                     quantity_of_x=end_num1, output_value=5)
        # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
        # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
        t2.insert('end', '次数')
        t2.insert('end',i)
        t2.insert('end','\t')
        t2.insert('insert', Coils_value)  # 将结果添加到文本框显示
        t2.insert('end','\n')
        time.sleep(1)#间隔1s读取一次状态

def plus_connect11():
    n1 = e1.get()  # 获取输入框1的值
    n2 = e2.get()  # 获取输入框2的值

    start_num1=start1.getint(start1.get())
    end_num1=end1.getint(end1.get())
    count_num1=count1.getint(count1.get())
    state1_state=state1.getint(state1.get())
    t2.delete(1.0, 'end')  # 清除文本框内容
    # # print(type(n1)) #字符串默认str
    master = mt.TcpMaster(n1, int(n2))
    master.set_timeout(15.0)
    # t.insert('insert', int(n1)+int(n2))  # 将结果添加到文本框显示
    if state1_state==1:
        for i in range(int(count_num1)):
            Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=start_num1,
                                         quantity_of_x=end_num1-start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end',i+1)
            t2.insert('end','\t')
            t2.insert('insert', Coils_value)  # 将结果添加到文本框显示
            t2.insert('end','\n')
            time.sleep(1)#间隔1s读取一次状态

    if state1_state==2:
        for i in range(int(count_num1)):
            Discrete_Input= master.execute(slave=1, function_code=md.DISCRETE_INPUTS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end', i + 1)
            t2.insert('end', '\t')
            t2.insert('insert', Discrete_Input)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            time.sleep(1)  # 间隔1s读取一次状态


    if state1_state==3:
        for i in range(int(count_num1)):
            Holding_Register = master.execute(slave=1, function_code=md.READ_HOLDING_REGISTERS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end', i + 1)
            t2.insert('end', '\t')
            t2.insert('insert', Holding_Register)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            time.sleep(1)  # 间隔1s读取一次状态

    if state1_state==4:
        for i in range(int(count_num1)):
            Input_Register = master.execute(slave=1, function_code=md.READ_INPUT_REGISTERS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end', i + 1)
            t2.insert('end', '\t')
            t2.insert('insert', Input_Register)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            time.sleep(1)


            # # 定义连接函数
# def connect1():
#     n1 = e1.get()  # 获取输入框1的值
#     n2 = e2.get()  # 获取输入框2的值
#     t1.delete(1.0, 'end')  # 清除文本框内容
#
#     print(type(n1)) #字符串默认str
#     print(type(n2)) #字符串默认str
#
#     master = mt.TcpMaster(n1, int(n2))
#     master.set_timeout(15.0)
#
#     t1.insert('end', "connection succeed!\n")
#     # t1.insert('end',"连接成功\n")


# 定义输入框1作为IP地址
# l1 = tkinter.Label(window, text='输入IP')
l1 = tkinter.Label(frame1_left, text='输入IP',width=10)
l00=l1.grid(row=0,column=0)
# l1.pack()
e1 = tkinter.Entry(frame1_left, width=20)
e01=e1.grid(row=0,column=1)
# e1.pack(side=tkinter.LEFT)

# 定义输入框2作为端口号
# l2 = tkinter.Label(window, text='输入Port')
l2 = tkinter.Label(frame1_left, text='输入Port',width=10)
l10 = l2.grid(row=1,column=0)

# l2.pack()
e2 = tkinter.Entry(frame1_left, width=20)
# e2.pack(side=tkinter.RIGHT)
e11 = e2.grid(row=1,column=1)

# 自由控制地址输入输出联合
start = tkinter.Label(frame1_left, text='起始地址',width=10)
l011=start.grid(row=0,column=2)
# l1.pack()
start1 = tkinter.Entry(frame1_left, width=8)
# print(type(e_start.get()))
# start_num = float(e011.get())
e_start1=start1.grid(row=0,column=3)

e_end = tkinter.Label(frame1_left, text='终止地址',width=10)
l012=e_end.grid(row=1,column=2)
# l1.pack()
end1 = tkinter.Entry(frame1_left, width=8)
e012=end1.grid(row=1,column=3)
end_num=end1.get()
# end_num=int(e12.get())

s12 = tkinter.Label(frame1_left, text='统计次数',width=10)
s012=s12.grid(row=2,column=2)
# l1.pack()
count1 = tkinter.Entry(frame1_left, width=8)
# count_num=se12.getint()
# count_num=int(se012.get())
se012=count1.grid(row=2,column=3)

# 定义输出文本框1和按钮1
# t1 = tkinter.Text(frame1_left, state='normal', width=30, height=1)
# t11 = tkinter.Text(frame1_left, state='normal', width=30, height=1).grid(row=2,column=1)
# t1 = tkinter.Text(window, state='normal', width=30, height=2)
# b1 = tkinter.Button(frame1_left, text="连接", command=connect1)
# b11 = tkinter.Button(frame1_left, text="连接", command=connect1).grid(row=2,column=0)
# b1.pack()
# t1.pack()

l3 = tkinter.Label(frame1_left, text='类型选择')
l3.grid(row=2,column=0)
# l3.pack()


var1234=StringVar()

abc=Combobox(frame1_left,textvariable=var1234,
             values=('01 Coil Status','02 Input Status',
                     '03 Holding Register','04 Input Registers'),width=18)
abc.grid(row=2,column=1)


# def current_status_get():
#     current_status = var1234.get()
#
# var1234=StringVar()
# abc=Combobox(window,textvariable=var1234,
#              values=('01 Coil Status','02 Input Status',
#                      '03 Holding Register','04 Input Registers'))
# # 初始状态默认设置
# # abc.current(0)
# abc.pack(pady=10)
#
# btn = Button(window,text="确认类型",command=current_status_get)  # 创建按钮
# # btn.pack(pady=10,anchor=S,side=BOTTOM)
# btn.pack(pady=10,anchor=S)

# b11 = tkinter.Text(window, state='normal',width=30,height=2)
# b11.delete(1.0, 'end')  # 清除文本框内容
#
# b11.insert('end', var1234.get())
# b11.pack()

print(e1.get())
print(type(e1.get()))


current_status=var1234.get()
print("当前类型为",current_status)
print("类型属性",type(current_status))

# if current_status=='03 Holding Register':
#     print("OKOKOK")

# 定义输出文本框2和按钮2
# t2 = tkinter.Text(window, state='normal', width=30, height=10)
# b2 = tkinter.Button(frame1_left, text='开始连接', command=plus_connect)
# b2.grid(row=3,column=0)
# t22 = tkinter.Text(frame1_left, state='normal', width=15,height=1)
# t22.insert('end','连接成功')
# t22.grid(row=3,column=1)
# b3 = tkinter.Button(window, text='数据显示',
#                     command=plus_connect(start_num,end_num,count_num))
# b3.pack()


bc3 = tkinter.Button(frame1_left, text='状态选择',
                    command=None,width=10)
bc3.grid(row=4,column=0)


state1 = tkinter.Entry(frame1_left, width=15)
state1.grid(row=4,column=1)


b3 = tkinter.Button(frame1_left, text='状态显示',
                    command=plus_connect11,width=10)
b3.grid(row=4,column=2)

t2 = tkinter.Text(window, state='normal', width=30, height=10)
xscrollbar.pack(side=BOTTOM, fill=X)
yscrollbar.pack(side=RIGHT, fill=Y)
t2.pack(fill=BOTH,expand=True)
xscrollbar.config(command=t2.xview)
yscrollbar.config(command=t2.yview)

t2.config(xscrollcommand=xscrollbar.set)
t2.config(yscrollcommand=yscrollbar.set)
t2.pack()


# 退出界面1
# b2 = tkinter.Button(window, text='退出', command=window.quit)
# b2.pack(pady=10,side=BOTTOM)
b2 = tkinter.Button(frame1_left, text='退出软件', command=window.quit, width=10)
b2.grid(row=4,column=3)

if __name__ == '__main__':
    frame1_left.pack(side=tkinter.LEFT)

    # 显示主窗口
    window.mainloop()

'''

# modbus4321
'''
import tkinter
from tkinter import *
from tkinter.ttk import *

import time
import modbus_tk.modbus_tcp as mt
import modbus_tk.defines as md

# 定义输出函数
def plus_connect11():
    # canshu()
    n1 = e1.get()  # 获取输入框1的值
    n2 = e2.get()  # 获取输入框2的值

    start_num1=start1.getint(start1.get())
    end_num1=end1.getint(end1.get())
    count_num1=count1.getint(count1.get())
    state1_state=state1.getint(state1.get())
    t2.delete(1.0, 'end')  # 清除文本框内容
    # # print(type(n1)) #字符串默认str
    master = mt.TcpMaster(n1, int(n2))
    master.set_timeout(15.0)
    # t.insert('insert', int(n1)+int(n2))  # 将结果添加到文本框显示
    if state1_state==1:
        for i in range(int(count_num1)):
            Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=start_num1,
                                         quantity_of_x=end_num1-start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end',i+1)
            t2.insert('end','\t')
            t2.insert('insert', Coils_value)  # 将结果添加到文本框显示
            t2.insert('end','\n')
            frame1_left.pack(side=tkinter.LEFT)
            time.sleep(1)#间隔1s读取一次状态

    if state1_state==2:
        for i in range(int(count_num1)):
            Discrete_Input= master.execute(slave=1, function_code=md.DISCRETE_INPUTS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end', i + 1)
            t2.insert('end', '\t')
            t2.insert('insert', Discrete_Input)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            frame1_left.pack(side=tkinter.LEFT)
            time.sleep(1)  # 间隔1s读取一次状态


    if state1_state==3:
        for i in range(int(count_num1)):
            Holding_Register = master.execute(slave=1, function_code=md.READ_HOLDING_REGISTERS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end', i + 1)
            t2.insert('end', '\t')
            t2.insert('insert', Holding_Register)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            frame1_left.pack(side=tkinter.LEFT)
            time.sleep(1)  # 间隔1s读取一次状态

    if state1_state==4:
        for i in range(int(count_num1)):
            Input_Register = master.execute(slave=1, function_code=md.READ_INPUT_REGISTERS, starting_address=start_num1,
                                         quantity_of_x=end_num1 - start_num1, output_value=10)
            # Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=1, quantity_of_x=50, output_value=5)
            # print(Coils_value)  # 取到的寄存器的值格式为元组(55, 12, 44)
            t2.insert('end', '次数')
            t2.insert('end', i + 1)
            t2.insert('end', '\t')
            t2.insert('insert', Input_Register)  # 将结果添加到文本框显示
            t2.insert('end', '\n')
            frame1_left.pack(side=tkinter.LEFT)
            time.sleep(1)



# 定义界面显示窗口
window = tkinter.Tk()
window.title('my window 12345')
window.geometry('800x600')

frame1 = tkinter.Frame(window)
frame1.pack()
frame1_left = tkinter.Frame(frame1)

# 上下滑动窗口
xscrollbar = Scrollbar(window, orient=HORIZONTAL)
yscrollbar = Scrollbar(window)

# 定义输入框1作为IP地址
# l1 = tkinter.Label(window, text='输入IP')
l1 = tkinter.Label(frame1_left, text='输入IP',width=10)
l00=l1.grid(row=0,column=0)
# l1.pack()
e1 = tkinter.Entry(frame1_left, width=20)
e01=e1.grid(row=0,column=1)
# e1.pack(side=tkinter.LEFT)

# 定义输入框2作为端口号
# l2 = tkinter.Label(window, text='输入Port')
l2 = tkinter.Label(frame1_left, text='输入Port',width=10)
l10 = l2.grid(row=1,column=0)

# l2.pack()
e2 = tkinter.Entry(frame1_left, width=20)
# e2.pack(side=tkinter.RIGHT)
e11 = e2.grid(row=1,column=1)

# 自由控制地址输入输出联合
start = tkinter.Label(frame1_left, text='起始地址',width=10)
l011=start.grid(row=0,column=2)
# l1.pack()
start1 = tkinter.Entry(frame1_left, width=8)
# print(type(e_start.get()))
# start_num = float(e011.get())
e_start1=start1.grid(row=0,column=3)

e_end = tkinter.Label(frame1_left, text='终止地址',width=10)
l012=e_end.grid(row=1,column=2)
# l1.pack()
end1 = tkinter.Entry(frame1_left, width=8)
e012=end1.grid(row=1,column=3)
end_num=end1.get()
# end_num=int(e12.get())

s12 = tkinter.Label(frame1_left, text='统计次数',width=10)
s012=s12.grid(row=2,column=2)
# l1.pack()
count1 = tkinter.Entry(frame1_left, width=8)
# count_num=se12.getint()
# count_num=int(se012.get())
se012=count1.grid(row=2,column=3)

l3 = tkinter.Label(frame1_left, text='类型选择')
l3.grid(row=2,column=0)
# l3.pack()

var1234=StringVar()

abc=Combobox(frame1_left,textvariable=var1234,
             values=('01 Coil Status','02 Input Status',
                     '03 Holding Register','04 Input Registers'),width=18)
abc.grid(row=2,column=1)

print(e1.get())
print(type(e1.get()))

current_status=var1234.get()
print("当前类型为",current_status)
print("类型属性",type(current_status))

bc3 = tkinter.Label(frame1_left, text='状态选择')
bc3.grid(row=4,column=0)

state1 = tkinter.Entry(frame1_left, width=15)
state1.grid(row=4,column=1)

b3 = tkinter.Button(frame1_left, text='状态显示',
                    command=plus_connect11,width=10)
b3.grid(row=4,column=2)

t2 = tkinter.Text(window, state='normal', width=30, height=10)
xscrollbar.pack(side=BOTTOM, fill=X)
yscrollbar.pack(side=RIGHT, fill=Y)
t2.pack(fill=BOTH,expand=True)
xscrollbar.config(command=t2.xview)
yscrollbar.config(command=t2.yview)

t2.config(xscrollcommand=xscrollbar.set)
t2.config(yscrollcommand=yscrollbar.set)
t2.pack()


# 退出界面1
# b2 = tkinter.Button(window, text='退出', command=window.quit)
# b2.pack(pady=10,side=BOTTOM)
b2 = tkinter.Button(frame1_left, text='退出软件', command=window.quit, width=10)
b2.grid(row=4,column=3)

if __name__ == '__main__':

    # plus_connect11()

    frame1_left.pack(side=tkinter.LEFT)
    # 显示主窗口
    window.mainloop()

'''

#  abcabcabca

'''

import tkinter
from tkinter import *
from tkinter.ttk import *

import time
from datetime import datetime
import modbus_tk.modbus_tcp as mt
import modbus_tk.defines as md


# 定义输出函数
def plus_connect11():
    # canshu()
    n1 = e1.get()  # 获取输入框1的值
    n2 = e2.get()  # 获取输入框2的值

    start_num1=start1.getint(start1.get())
    end_num1=end1.getint(end1.get())
    count_num1=count1.getint(count1.get())
    state1_state=state1.getint(state1.get())
    t2.delete(1.0, 'end')  # 清除文本框内容
    # # print(type(n1)) #字符串默认str
    master = mt.TcpMaster(n1, int(n2))
    master.set_timeout(15.0)
    # t.insert('insert', int(n1)+int(n2))  # 将结果添加到文本框显示
    if state1_state==1:
        for i in range(int(count_num1)):
            Coils_value = master.execute(slave=1, function_code=md.READ_COILS, starting_address=start_num1,
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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)#间隔1s读取一次状态

    if state1_state==2:
        for i in range(int(count_num1)):
            Discrete_Input= master.execute(slave=1, function_code=md.DISCRETE_INPUTS, starting_address=start_num1,
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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态


    if state1_state==3:
        for i in range(int(count_num1)):
            Holding_Register = master.execute(slave=1, function_code=md.READ_HOLDING_REGISTERS, starting_address=start_num1,
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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态

    if state1_state==4:
        for i in range(int(count_num1)):
            Input_Register = master.execute(slave=1, function_code=md.READ_INPUT_REGISTERS, starting_address=start_num1,
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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)

# 定义界面显示窗口
window = tkinter.Tk()
window.title('AUBO_Modbus_Tool V 2.0')
window.geometry('800x600')

frame1 = tkinter.Frame(window)
frame1.pack()
frame1_left = tkinter.Frame(frame1)

# 上下滑动窗口
xscrollbar = Scrollbar(window, orient=HORIZONTAL)
yscrollbar = Scrollbar(window)

# 定义输入框1作为IP地址
# l1 = tkinter.Label(window, text='输入IP')
l1 = tkinter.Label(frame1_left, text='输入IP',width=10)
l00=l1.grid(row=0,column=0)
# l1.pack()
e1 = tkinter.Entry(frame1_left, width=20)
e01=e1.grid(row=0,column=1)
# e1.pack(side=tkinter.LEFT)

# 定义输入框2作为端口号
# l2 = tkinter.Label(window, text='输入Port')
l2 = tkinter.Label(frame1_left, text='输入Port',width=10)
l10 = l2.grid(row=1,column=0)

# l2.pack()
e2 = tkinter.Entry(frame1_left, width=20)
# e2.pack(side=tkinter.RIGHT)
e11 = e2.grid(row=1,column=1)

# 自由控制地址输入输出联合
start = tkinter.Label(frame1_left, text='起始地址',width=10)
l011=start.grid(row=0,column=2)
# l1.pack()
start1 = tkinter.Entry(frame1_left, width=8)
# print(type(e_start.get()))
# start_num = float(e011.get())
e_start1=start1.grid(row=0,column=3)

e_end = tkinter.Label(frame1_left, text='终止地址',width=10)
l012=e_end.grid(row=1,column=2)
# l1.pack()
end1 = tkinter.Entry(frame1_left, width=8)
e012=end1.grid(row=1,column=3)
end_num=end1.get()
# end_num=int(e12.get())

s12 = tkinter.Label(frame1_left, text='统计次数',width=10)
s012=s12.grid(row=2,column=2)
# l1.pack()
count1 = tkinter.Entry(frame1_left, width=8)
# count_num=se12.getint()
# count_num=int(se012.get())
se012=count1.grid(row=2,column=3)

l3 = tkinter.Label(frame1_left, text='类型选择')
l3.grid(row=2,column=0)
# l3.pack()

var1234=StringVar()

abc=Combobox(frame1_left,textvariable=var1234,
             values=('01 Coil Status','02 Input Status',
                     '03 Holding Register','04 Input Registers'),width=18)
abc.grid(row=2,column=1)

print(e1.get())
print(type(e1.get()))

current_status=var1234.get()

# print("当前类型为",current_status)
# print("类型属性",type(current_status))
# print(time.time())
# print(datetime.now().time())
#  it is ok
# time1 = time.localtime()
# current_time = time.strftime("%H:%M:%S", time1)
# print(current_time)


bc3 = tkinter.Label(frame1_left, text='状态选择')
bc3.grid(row=4,column=0)

state1 = tkinter.Entry(frame1_left, width=15)
state1.grid(row=4,column=1)

b3 = tkinter.Button(frame1_left, text='状态显示',
                    command=plus_connect11,width=10)
b3.grid(row=4,column=2)

t2 = tkinter.Text(window, state='normal', width=30, height=10)
xscrollbar.pack(side=BOTTOM, fill=X)
yscrollbar.pack(side=RIGHT, fill=Y)
t2.pack(fill=BOTH,expand=True)
xscrollbar.config(command=t2.xview)
yscrollbar.config(command=t2.yview)

t2.config(xscrollcommand=xscrollbar.set)
t2.config(yscrollcommand=yscrollbar.set)
t2.pack()


# 退出界面1
# b2 = tkinter.Button(window, text='退出', command=window.quit)
# b2.pack(pady=10,side=BOTTOM)
b2 = tkinter.Button(frame1_left, text='退出软件', command=window.quit, width=10)
b2.grid(row=4,column=3)

if __name__ == '__main__':

    # plus_connect11()

    frame1_left.pack(side=tkinter.LEFT)
    # 显示主窗口
    window.mainloop()
'''

#  aubo 2.14
'''
import tkinter
from tkinter import *
from tkinter.ttk import *

import time
from datetime import datetime
import modbus_tk.modbus_tcp as mt
import modbus_tk.defines as md


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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)#间隔1s读取一次状态

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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态


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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态

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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)

# 定义界面显示窗口
window = tkinter.Tk()
window.title('AUBO_Modbus_Tool V 2.1.4')
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


# leixing0 = tkinter.Label(frame1_left, text='类型选项',width=30)
# leixing0.grid(row=0,column=4)
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

if __name__ == '__main__':

    # plus_connect11()

    frame1_left.pack(side=tkinter.LEFT)
    # 显示主窗口
    window.mainloop()
'''

# 稳定版 V2.1
'''
import tkinter
from tkinter import *
from tkinter.ttk import *

import time
from datetime import datetime
import modbus_tk.modbus_tcp as mt
import modbus_tk.defines as md

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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)#间隔1s读取一次状态

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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态

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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)  # 间隔1s读取一次状态

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
            frame1_left.pack(side=tkinter.LEFT)
            # time.sleep(1)

# 定义界面显示窗口
window = tkinter.Tk()
window.title('AUBO_Modbus_Tool V 2.1.4')
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

# leixing0 = tkinter.Label(frame1_left, text='类型选项',width=30)
# leixing0.grid(row=0,column=4)
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

if __name__ == '__main__':

    # plus_connect11()

    frame1_left.pack(side=tkinter.LEFT)
    # 显示主窗口
    window.mainloop()
'''







