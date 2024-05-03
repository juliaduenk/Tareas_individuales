
import pandas as pd 

def powers_of_series(s, k):
    return pd.DataFrame({i: s**i for i in range(1, k+1)})
    