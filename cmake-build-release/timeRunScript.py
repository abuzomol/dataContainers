import subprocess
import shlex

nums = ["0","1","2","3"]
programs = ["./pointerPointer", "./vectorVector","./vectorArray", "./pointerVector", "./vectorPointer"]
header = "C:N:Sum:Construction(s):Access(s)\n" 
for program in programs:
	for num in nums:
		fileName = program[2:] + num + "-time.csv"
		with open(fileName,"w") as fileInput:
			fileInput.write(header)
N = 4000000
for C in range(1, 200):
	M = N//C 
	for num in nums:
		for program in programs:
			process = subprocess.run([program+num,str(M),str(C)],stdout=subprocess.PIPE, universal_newlines=True)
			output = process.stdout
			halfSplit =  output.split("\n")[:3]
			splitted = [str(C),str(M)] + [i.split(" ")[1] for i in halfSplit]
			words = ""
			for word in splitted:
				words += word + ":"
			words += "\n"
			fileName = program[2:] + num + "-time.csv"
			with open(fileName,"a") as fileInput:
					fileInput.write(words)