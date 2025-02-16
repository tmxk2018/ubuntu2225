import math
import matplotlib.pyplot as plt
import numpy as np
from scipy.stats import norm
from scipy.optimize import curve_fit

def Read_File(path, filename):
	print(path, filename)

	# load data in dict format
	f = open(path+filename, 'r')
	lines = f.readlines()

	print(lines)

	list_y = []
	list_x = []

	for line in lines:
		line = line.strip().split()
		y = float(line[0])
		x = float(line[1])
		print('y, x: ', y, x)
		#print(value)

		list_y.append(y)
		list_x.append(x)

	return list_y, list_x


if __name__=='__main__':
	print('Hello')

	path = './data/'
	filename = 'Data0601_1.txt'
	list_y, list_x = Read_File(path, filename)

	print(list_y, list_x)
	list_time = range(len(list_y))

	# step 2 : analysis
	# figure
	figsize = 6,5
	figure, ax = plt.subplots(figsize=figsize)
	
	# (2) plot
	ax.plot(list_time, list_y, '-',label='Y')

	#
	# set font for labels in two axis
	font1 = {'family': 'Nimbus Roman',
         'weight': 'bold',
		 'style':'normal',
         'size': 15,
         }

	font2 = {'family': 'Nimbus Roman',
         'weight': 'normal',
		 'style':'italic',
         'size': 16,
         }

	ax.set_xlabel("Time index", font1)
	ax.set_ylabel("Y / mm", font1)

	#设置坐标刻度值的大小以及刻度值的字体
	plt.tick_params(labelsize=15)
	labels = ax.get_xticklabels() + ax.get_yticklabels()
	[label.set_fontname('Nimbus Roman') for label in labels]
	[label.set_fontstyle('italic') for label in labels]

	# set title
	plt.title('Distribution of Y with time', fontsize=13)

	# draw legend
	plt.legend()

	# tight layout
	plt.tight_layout()

	# save figure
	plt.savefig('figure_distributionY.png')


	# step 2.2 : histogram
	# figure
	figsize = 6,5
	figure, ax = plt.subplots(figsize=figsize)

	hist, bin_edges = np.histogram(list_y, bins=5)
	hist_normalized = hist/hist.sum()
	std = np.std(list_y)
	ax.plot(bin_edges[:-1], hist_normalized, 'o-',label=r'Y, $\sigma=$'+str(round(std,5))+'mm')

	#
	# set font for labels in two axis
	font1 = {'family': 'Nimbus Roman',
         'weight': 'bold',
		 'style':'normal',
         'size': 15,
         }

	font2 = {'family': 'Nimbus Roman',
         'weight': 'normal',
		 'style':'italic',
         'size': 16,
         }

	ax.set_xlabel("Y / mm", font1)
	ax.set_ylabel("Uniformed Counts", font1)

	#设置坐标刻度值的大小以及刻度值的字体
	plt.tick_params(labelsize=15)
	labels = ax.get_xticklabels() + ax.get_yticklabels()
	[label.set_fontname('Nimbus Roman') for label in labels]
	[label.set_fontstyle('italic') for label in labels]

	# set title
	plt.title('Histgram of Y Values', fontsize=13)

	# draw legend
	plt.legend()

	# tight layout
	plt.tight_layout()

	# save figure
	plt.savefig('figure_histgramOfY.png')

	plt.show()
