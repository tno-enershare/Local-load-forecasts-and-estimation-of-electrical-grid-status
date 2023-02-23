# Libraries

import numpy as np

import pandas as pd

import matplotlib.pyplot as plt

import datetime

import matplotlib.dates as mdates

if __name__ == "__main__":
    df2 = pd.read_csv("transformer_overloads_2_households.csv", sep=';', decimal='.')

    df3 = pd.read_csv("transformer_overloads_2_households.csv", sep=';', decimal='.', dtype=str)

    df2['timestamp'] = pd.to_datetime(df2['timestamp'], dayfirst=True)

    df2['transformer_overloaded'] = df3['transformer_overloaded']

    df2 = df2.set_index(['transformer_overloaded'])

    #df2

    fig, ax1 = plt.subplots()

    #ax1.plot(df2['timestamp'].loc['True'], df2['transformer_load'].loc['True'], 'ro')

    ax1.plot(df2['timestamp'], df2['transformer_load'], 'k')

    ax1.axhline(df2.overload_threshold[0], color='r', linestyle='--')

    xformatter = mdates.DateFormatter('%H:%M')

    plt.gcf().axes[0].xaxis.set_major_formatter(xformatter)

    fig.autofmt_xdate()

    plt.xlabel('Time [h]')

    plt.ylabel('Transformer load [kW]')

    plt.savefig('../Federated_Learning_Forecasts/Transformer_load_2_households.png', dpi=500, bbox_inches='tight')
