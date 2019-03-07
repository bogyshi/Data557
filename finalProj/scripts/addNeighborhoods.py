from collections import Counter
import csv
import re
import pandas as pd
import math

fileLocation = '/home/bdvr/Documents/GitHub/Data557/finalProj/data/'
file1 = 'Seattle_Pet_License_ with _Population.csv'
file2 = 'zipvsnb.csv'

neighborData = pd.read_csv(fileLocation+file2)
petData = pd.read_csv(fileLocation+file1,encoding = "unicode")

petData['ZIP Code'] = pd.to_numeric(petData['ZIP Code'], errors='coerce')
petData['ZIP Code'] = petData['ZIP Code'].fillna(0)
petData['ZIP Code'] = petData['ZIP Code'].astype(int)
neighborData['zipcode'] = neighborData['zipcode'].astype(int)

print(petData.dtypes)

print(neighborData.dtypes)
neighborData.set_index('zipcode')
result = petData.join(other=neighborData,on='ZIP Code',how='left')
print(result.shape)
print(result[result['zipcode'].notnull()].shape)
