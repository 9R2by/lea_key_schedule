import random

import numpy as np
from scipy import signal
import subprocess
import statistics
import matplotlib.pyplot as plt
from tqdm import tqdm

if __name__ == '__main__':
    path_to_binary = './target/lea_key_schedule'
    fig, ax = plt.subplots()
    output_text = ''
    #n = pow(2, 18)
    n = 62500
    median_arr = []

    for _ in tqdm(range(n + 1), desc="Loading", unit="Runs"):
        command = [path_to_binary, str(random.getrandbits(32)), str(random.getrandbits(32)),
                   str(random.getrandbits(32)),
                   str(random.getrandbits(32))]
        process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        cycles = int(stdout.split()[0])
        median_arr.append(cycles)

    sum = np.sum(median_arr)
    print(sum/n)
    ax.plot(signal.medfilt(median_arr), label=f'Median filtered key schedule algorithm cycles per run')
    ax.set_xlabel('n')
    ax.set_ylabel('Cycles')
    ax.set_title('LEA Key Schedule')
    ax.legend()
    plt.savefig('output_plot.svg', format='svg')
    print(statistics.median(median_arr))
