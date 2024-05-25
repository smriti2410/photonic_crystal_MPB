import pandas as pd
import matplotlib.pyplot as plt

# Read the data from the file
df = pd.read_csv('test.tm.dat', skiprows=1, header=None)

# Assign column names
df.columns = ['tmfreqs', 'k index', 'k1', 'k2', 'k3', 'kmag/2pi', 'tm band 1', 'tm band 2', 'tm band 3', 'tm band 4']

# Set 'k index' as the index of the DataFrame
df.set_index('k index', inplace=True)

# Find the minimum of band 2 and maximum of band 1 for shading
min_band_2 = df['tm band 2'].min()
max_band_1 = df['tm band 1'].max()

# Plotting
plt.figure(figsize=(10, 6))

# Plot each TM band
for band in range(1, 5):  # 4 bands total
    plt.plot(df.index, df[f'tm band {band}'], '-o',color='blue',  label=f'TM Band {band}')

# Shade the region between the max value of band 1 and min value of band 2 across all k index
plt.fill_between(df.index, max_band_1, min_band_2, color='grey', alpha=0.5, label='Band Gap')

plt.xlabel('K Index')
plt.ylabel('Normalized Frequency (a/λ)')
plt.title('Normalized Frequency vs K Point Index with Band Gap Shaded')
plt.legend(loc='upper right', bbox_to_anchor=(1.15, 1))
plt.grid(True)
plt.tight_layout()  # Adjust layout to make room for the legend

# Display the plot
plt.show()

