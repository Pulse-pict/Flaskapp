#!/bin/sh
awk '/Concurrency Level:/{print $3}' delete1.txt >temp.txt
awk '/Time per request:/{print $4}' delete1.txt >file1.txt
head -1 file1.txt| cat >>temp.txt
tr '\n' '\t\t\t' < temp.txt|cat >temp2.txt
awk 'BEGIN{print"no. concurrent processes  time"}{print}' temp2.txt >>finalop.txt
