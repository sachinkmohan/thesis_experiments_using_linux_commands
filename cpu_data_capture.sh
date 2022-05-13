#!/bin/bash
#tee - copies the input to the output, -a is to append
cat /proc/loadavg | tee -a >> cpu_1305.txt
