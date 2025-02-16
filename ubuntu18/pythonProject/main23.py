
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import pylab as mpl
# import matplotlib.dates as mdates
from matplotlib.dates import AutoDateLocator,DateFormatter

mpl.rcParams['font.sans-serif'] = ['SimHei']
autodates=AutoDateLocator()

ymd=DateFormatter("%Y-%m-%d %H:%M:%S")
# figure,ax=plt.subplots(2,1)
# figure.autofmt_xdate()        #设置x轴时间外观
# ax.xaxis.set_major_locator(autodates)       #设置时间间隔
# ax.xaxis.set_major_formatter(yearsFmt)      #设置时间显示格式
# ax.set_xticks() #设置x轴间隔
# ax.set_xlim()   #设置x轴范围


# dateparse = lambda dates:pd.datetime.strptime(dates,'%m/%d/%Y %H:%M:%s')
#
# filename='C:/Users/lan/Documents/P_ folder/DaTa_Temp/CS.csv'
#
# data = pd.read_csv(filename,parse_dates=['日期'],date_parser=dateparse)
# # data = pd.read_csv(filename,encoding='utf-8',parse_dates=['日期'],date_parser=dateparse)
#
# df_time = pd.read_csv(filename,parse_dates=True)
# print("head22 is \n",df.head())
# print("head is \n",df_time.head())
#
# df_time=pd.to_datetime(df_time,dayfirst=True)

# df_time['DL'].plot()
# pd.plotting.scatter_matrix(df_time)
# st1=df_time['TIME']
# st1=pd.to_datetime(st1,format='%Y-%m-%d %H:%m:%s')
# plt.scatter(st1,df_time['DL'])

# plt.plot(st1,df['DL'])

filename='C:/Users/lan/Documents/P_ folder/DaTa_Temp/CS2.csv'

df = pd.read_csv(filename,parse_dates=True,index_col='TIME')
# df = pd.read_csv(filename,parse_dates=True,index_col='NUM')

# plt.plot(df['DL'])
# plt.ylabel(u'电量',fontproperties='SimHei')

plt.plot(df['LC2'])
plt.ylabel(u'里程',fontproperties='SimHei')


plt.xlabel(u'时间',fontproperties='SimHei')

plt.grid(True)

plt.show()

