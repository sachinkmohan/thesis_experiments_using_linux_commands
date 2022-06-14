#!/bin/bash
input=$1
while IFS= read -r line
do
  #awk '/RAM/ {print $2,$10,$14}' >> tegra_out.txt
  #awk '/RAM/ {print $2,$10,$14}' | cut -c 1-4
  # sed 's/.$//' removes the last character here, i.e %
  awk '/RAM/ {print $14}' | sed 's/.$//'
done < "$input"
