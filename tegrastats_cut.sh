#!/bin/bash
input="/home/mohan/todelete/tegrastats.txt"
while IFS= read -r line
do
  #awk '/RAM/ {print $2,$10,$14}' >> tegra_out.txt
  awk '/RAM/ {print $2,$10,$14}' | cut -c 1-4
done < "$input"
