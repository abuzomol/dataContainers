import subprocess
import shlex


#for i in range(1,61):
programs = ["./pointerPointer", "./vectorVector","./vectorArray", "./pointerVector", "./vectorPointer"]
N = 4000000
for C in range(1, 200):
	M = N//C 
	for program in programs:
		process = subprocess.run([program,str(M),str(C)],stdout=subprocess.PIPE, universal_newlines=True)
		output = process.stdout
		halfSplit =  output.split("\n")[:3]
		splitted = [str(C),str(M)] + [i.split(" ")[1] for i in halfSplit]
		words = ""
		for word in splitted:
			words += word + " "
		words += "\n"
		fileName = program[2:] + "-time.csv"
		with open(fileName,"a") as fileInput:
				fileInput.write(words)