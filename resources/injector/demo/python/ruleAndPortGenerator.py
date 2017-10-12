import sys
import os
import random

dest = open(sys.argv[1], 'w')

for i in range(0,100):
	sourceport = random.randint(1500, 10000)
	destport = 443
	dest.write("\"allow_https," + str(sourceport) + "," + str(destport) + ",TCP\",\n")

dest.truncate()
dest.close()
