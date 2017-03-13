#!/usr/bin/python

import ConfigParser
import logging
import os
import shutil
import subprocess
import sys
import tempfile
import time
import uuid
import time

DIR = "/Volumes"

print("start...")

# print(time.time())

exclude = set(['.grab'])
for root, directories, filenames in os.walk('/Volumes/WD Elements 2/Video/TV Shows', topdown=True):
	directories[:] = [d for d in directories if d not in exclude]
	for filename in filenames:
		if filename.endswith(".ts") and filename.find("Silicon Valley") == -1:
			print(os.path.join(root, filename))