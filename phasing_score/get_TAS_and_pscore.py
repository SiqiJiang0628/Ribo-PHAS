import sys
from collections import defaultdict

def main():
	dict_PHAS = {}
	dict_start = {}
	dict_end = {}
	with open(sys.argv[1],'r') as f:
		for i in f:
			line = i.strip().split()
			for m in range(int(line[1]),int(line[2])+1):
				label = line[0]+'\t'+str(m)
				dict_PHAS[label] = line[3]
			dict_start[line[3]] = int(line[1])
			dict_end[line[3]] = int(line[2])
	f.close()
	

	dict_PHAS_2 = defaultdict(list)
	with open(sys.argv[2],'r') as f:
		for i in f:
			line = i.strip().split()
			label = line[0]+'\t'+line[1]
			if label in dict_PHAS:
				name = line[0]+'\t'+line[1]+'\t'+line[6]
				
				dict_PHAS_2[dict_PHAS[label]].append(name)
		
				
	f.close()

	name = sys.argv[2].split('.')
	file_name = name[0]+'.'+sys.argv[3]
	out = open(file_name,'w')  
	for i in dict_PHAS_2:
		values = dict_PHAS_2[i]
		position = []
		dict_temp = {}
		chr_temp = ''
		for temp in values:
			values_temp = temp.split('\t')
			position.append(int(values_temp[1]))
			dict_temp[int(values_temp[1])] = values_temp[-1]
			chr_temp =  values_temp[0]

		position.sort()
		


		number = 0
		for m in range(dict_start[i],dict_end[i]+1):
			number += 1
			if m in dict_temp:
				out.write(i+'\t'+str(number)+'\t'+chr_temp+'\t'+str(m)+'\t'+dict_temp[m]+'\n')
			else:
				out.write(i+'\t'+str(number)+'\t'+chr_temp+'\t'+str(m)+'\t'+'NA'+'\n')


	out.close()	
		

		


if __name__ == '__main__':
	main()

