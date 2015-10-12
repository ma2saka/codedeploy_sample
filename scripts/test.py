#!/usr/bin/python

with open("/tmp/myfile.txt") as f:
  for x in range(10):
    f.write(" --> %d" % x)
    f.write("\n")
