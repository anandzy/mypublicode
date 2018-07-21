#!/usr/bin/python3


import sys
import os


#This script will pull the logs from s3 to local machine and unzip the logs and extract the ips list to check the geo based % of clients.

#The below function will download and unzip the files and then savesthem to iplist.txt
def main():
	print("Downloading the log files of abr.com via s3...")
	os.system("aws s3 sync s3://anandbr.com/logs . --region ap-south-1")

	os.system("gunzip *")

	os.system("cat E* | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' >> rawiplist.txt")

#The below code will fileter and find the duplicate ips from the iplist.txt and give filterdipslist.txt
	file = open('rawiplist.txt', 'r').readlines()
	file_set = set(file)
	cleandata = open('ips.txt', 'w')
	for line in file_set:
		cleandata.write(line)

#The Below Code will say the orgin city and xountry of ips.
	os.system("cat ips.txt | xargs -I% curl http://ipinfo.io/%/city | http://ipinfo.io/%/country >> city.json")
	os.system("cat ips.txt | xargs -I% curl http://ipinfo.io/%/country >> country.json")

#Expected 4 Output files rawipslist.txt, ips.txt, city.json
'''

for ips in file:
        if ips[0] not in found:
        yield field
		found.add(ips[0])
        print(list(unique(file)))

'''
if __name__ == "__main__": main()
