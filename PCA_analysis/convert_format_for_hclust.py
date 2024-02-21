import numpy as np
import re
import sys

array = np.zeros((44441,20),float)

number = -1
with open(sys.argv[1],'r') as f:
	for i in f:
		line = i.strip().split()
		if re.match('Gene',line[0]):
			continue
		number+=1	
		for j in range(1,21):
			m = j-1
			value = float(line[j])
			array[number,m] = value
f.close()

names = ['05mm_R1','05mm_R2','10mm_R1','10mm_R2','13mm_R1','13mm_R2','15mm_R2','15mm_R3','20mm_R4','20mm_R5','25mm_R3','25mm_R4','30mm_R4','30mm_R5','40mm_R2','40mm_R3','50mm_R2','50mm_R3','pollen_R1','pollen_R3']

out = open(sys.argv[2],'w')
for i in range(len(array[1])):
	out.write(names[i]+'\t')
	for j in range(len(array)):
		out.write(str(array[j,i])+'\t')
	out.write('\n')
out.close()
	

