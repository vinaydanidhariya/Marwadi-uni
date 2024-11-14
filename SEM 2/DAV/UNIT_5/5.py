# 5. Reimplement the above exercise using the Seaborn joint plot
# distributions.

import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd

data=pd.read_csv("tips.csv")


sns.jointplot(x = "size", y = "tip",kind="reg",data = data)
plt.savefig("tips_reg.png")

sns.jointplot(x = "size", y = "tip",kind="hex",data = data)
plt.savefig("tips_hex.png")

sns.jointplot(x = "size", y = "tip",kind="hist",data = data)
plt.savefig("tips_hist.png")

sns.jointplot(x = "size", y = "tip",kind="kde",hue="gender",data = data)
plt.savefig("tips_kde.png")

plt.show()
