import sys
import math
from collections import defaultdict

def main():
	dict_count = defaultdict(int)
	out = open(sys.argv[2],'w')
	
	with open(sys.argv[1],'r') as f:
		for i in f:
			line = i.strip().split()
			if line[5] == '+':
				line[1] = str(int(line[1])+1)
				label = line[0]+'\t'+line[1]
			else:
				line[1] = str(int(line[1])+1+2)	
				label = line[0]+'\t'+line[1]
			dict_count[label] += 1

	for i in dict_count:
		temp = i.split('\t')
		chr_name = temp[0]
		position = int(temp[1])
		abundance = dict_count[i]
		
		circle = 0
		phase_pos = 0
		all_pos = 0
		other_pos = 0
		p_score = 0.0
		
		dict_temp = defaultdict(int)
		max_position = ''
		max_number = 0
		for m in range(0,241):
			position = int(temp[1])+1*m
			label = chr_name + '\t' + str(position)
			if label in  dict_count: 
				dict_temp[label] = dict_count[label]
				if dict_count[label] >= max_number:
					max_number = dict_count[label]
					max_position = label

		dict_temp[max_position] = dict_temp[max_position]
		
		for m in range(0,11):
			position = int(temp[1])+m*24
			label = chr_name + '\t' + str(position)
			if label in dict_temp:
				circle += 1
				phase_pos += dict_temp[label]	
		position = int(temp[1])	
		for m in range(0,241):
			position = int(temp[1])+1*m
			label = chr_name + '\t' + str(position)   
			if label in dict_temp:
				all_pos += dict_temp[label]
		all_pos = float(all_pos)
		phase_pos = float(phase_pos)
		other_pos = 0.0
		other_pos = all_pos-phase_pos

		p_score = (float(circle)-2)*math.log(1+10*(phase_pos/(1+other_pos)))
		out.write(i+'\t'+str(dict_count[i])+'\t'+str(circle)+'\t'+str(phase_pos)+'\t'+str(other_pos)+'\t'+str(p_score)+'\n')

	f.close()
	out.close()







if __name__ == '__main__':
	main()
