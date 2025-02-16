import numpy as np
import matplotlib.pyplot as plt


def ReadFile(filename):
    path = './Data/'
    f = open(path + filename)
    lines = f.readlines()
    return lines


def Collating(lines):
    output = []
    for line in lines:
        line = line.strip().split()
        output.append(float(line[0]))
    return output


def cm_to_mm(data_in_cm):
    data_in_mm = []
    for element in data_in_cm:
        data_in_mm.append(element * 10.0)
    return data_in_mm


def normalization(data, expectation):
    normalized_data = []
    for element in data:
        normalized_data.append(element - expectation)
    return normalized_data


def calEuclidean(x, y, z):
    dist = []
    for i in range(len(x)):
        dist.append(np.sqrt(np.square(x[i]) + np.square(y[i]) + np.square(z[i])))
    return dist


if __name__ == "__main__":
    line_x = ReadFile('Aubo_vision_x.txt')
    line_y = ReadFile('Aubo_vision_y.txt')
    line_z = ReadFile('Aubo_vision_z.txt')

    x = Collating(line_x)
    y = Collating(line_y)
    z = Collating(line_z)

    x = cm_to_mm(x)
    y = cm_to_mm(y)

    expectation_x = np.mean(x)
    expectation_y = np.mean(y)
    expectation_z = np.mean(z)

    normalized_x = normalization(x, expectation_x)
    normalized_y = normalization(y, expectation_y)
    normalized_z = normalization(z, expectation_z)

    euclidean = calEuclidean(normalized_x, normalized_y, normalized_z)
    euclidean_avg = np.mean(euclidean)
    euclidean_std = np.std(euclidean)

    print("euclidean_avg: ", euclidean_avg)
    print("euclidean_std: ", euclidean_std)

    font_title = {'family': 'Times New Roman', 'weight': 'bold', 'style': 'italic', 'size': 18}
    font_label = {'family': 'Times New Roman', 'weight': 'bold', 'style': 'italic', 'size': 12}
    figure = plt.figure(figsize=(15, 6))
    plt.suptitle('Normalized Points Distribution\n Average Euclidean Distance to Origin: {euclidean_avg}[mm]\n Standard Deviation of Euclidean Distance to Origin: {euclidean_std}[mm]'.format(euclidean_avg=round(euclidean_avg, 3), euclidean_std=round(euclidean_std, 3)), family='Times New Roman', weight='bold', fontsize=18)

    ax1 = figure.add_subplot(1, 3, 1)
    ax1.set_title('Points Distribution in x-y Plane')
    ax1.scatter(normalized_x, normalized_y, linewidths=1, label="Data point")
    ax1.scatter(0, 0, marker="D", linewidths=5, label="Expectation point")
    ax1.set_xlabel('x[mm]', font_label)
    ax1.set_ylabel('y[mm]', font_label)
    ax1.set_xlim((-1, 1))
    ax1.set_ylim((-1, 1))
    ax1.legend(loc='best')
    ax1.grid()

    ax2 = figure.add_subplot(1, 3, 2)
    ax2.set_title('Points Distribution in x-z Plane')
    ax2.scatter(normalized_x, normalized_z, linewidths=1, label="Data point")
    ax2.scatter(0, 0, marker="D", linewidth=5, label="Expectation point")
    ax2.set_xlabel('x[mm]', font_label)
    ax2.set_ylabel('z[mm]', font_label)
    ax2.set_xlim((-1, 1))
    ax2.set_ylim((-1, 1))
    ax2.legend(loc='best')
    ax2.grid()

    ax3 = figure.add_subplot(1, 3, 3)
    ax3.set_title('Points Distribution in y-z Plane')
    ax3.scatter(normalized_y, normalized_z, linewidths=1, label="Data point")
    ax3.scatter(0, 0, marker="D", linewidth=5, label="Expectation point")
    ax3.set_xlabel('y[mm]', font_label)
    ax3.set_ylabel('z[mm]', font_label)
    ax3.set_xlim((-1, 1))
    ax3.set_ylim((-1, 1))
    ax3.legend(loc='best')
    ax3.grid()
    plt.tight_layout()
    plt.savefig('Accuracy of AuboVision Pluging without AGV motion.png')
    plt.show()
