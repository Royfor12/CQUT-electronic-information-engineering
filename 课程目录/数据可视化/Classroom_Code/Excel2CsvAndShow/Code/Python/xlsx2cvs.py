# 导入必要的库
import pandas as pd
import csv
ReadExcel=pd.read_excel("data.xlsx")
data=ReadExcel["期末(必填)"]
length=len(data)
temp=[];i=0;j=0 
for i in range(0,length):
    temp.append(data[i])
count=[0, 0, 0, 0, 0, 0]
describe=[0,60,70,80,90,100]
length_j=len(describe) 
for j in range(0,length_j):
    for i in range(0,length):
        if temp[i]>=describe[j] and temp[i]<describe[j+1]:
            count[j]=count[j]+1
count=count[0:-1]

print(count)
CsvWriter=open("data.csv","w")
CsvWriter.write("segment,number"+"\n") 
length=len(count)
temp_str=[]
for i in range(0,length):
    temp_str.append(str(count[i]))
for i in range(0,length_j):describe[i]=str(describe[i]) 
for i in range(0,length):
    CsvWriter.write(describe[i]+"-"+describe[i+1]+","+temp_str[i]+"\n")
print("OK!")