import subprocess
import shlex

nums = ["0","1","2","3"]
programs = ["./helloWorld","./singleArray","./pointerPointer", "./vectorVector","./vectorArray", "./pointerVector", "./vectorPointer"]
header = "C,N,cycles:u,cycles:k,cycles,instructions:u,instructions:k,instructions,cache-misses:u,cache-misses:k,cache-misses,LLC-loads:u, LLC-loads:k,LLC-loads,LLC-load-misses:u,LLC-load-misses:k,LLC-load-misses,LLC-store-misses:u,LLC-store-misses:k,LLC-store-misses\n" 
for program in programs:
	for num in nums:
		fileName = program[2:] + num + "-cache.csv"
		with open(fileName,"w") as fileInput:
			fileInput.write(header)
N = 4000000
sudo = "sudo"
perfCommand = "perf"
perfMode = "stat"
option1 =  "-e"
option2 =  "cycles:u,cycles:k,cycles,instructions:u,instructions:k,instructions,cache-misses:u,cache-misses:k,cache-misses,LLC-loads:u, LLC-loads:k,LLC-loads,LLC-load-misses:u,LLC-load-misses:k,LLC-load-misses,LLC-store-misses:u,LLC-store-misses:k,LLC-store-misses" 
option3 = "-x,"
for C in range(1, 200):
	M = N//C 
	for program in programs:
		#print(perfCommand + " " + perfMode + " " + option1 + " " + option2 + " " + program + " " + str(M) + " "+ str(C))
		for num in nums:
			process = subprocess.run([sudo,perfCommand,perfMode,option1,option2,option3,program+num,str(M),str(C)],stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
			output = process.stdout
			outputErr = process.stderr
			lineSplit = outputErr.split("\n")
			splitted = [str(C),str(M)] + [i.split(",")[0] for i in lineSplit]
			words = ""
			for word in splitted:
				words += word + ","
			words += "\n"
			fileName = program[2:] + num + "-cache.csv"
			with open(fileName,"a") as fileInput:
					fileInput.write(words)
		