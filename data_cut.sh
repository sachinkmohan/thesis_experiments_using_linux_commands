#!/bin/bash
#input="gpu_quantized_ssd7_keras_1705.txt"
input="$1"

cut_gpu() {
  while IFS= read -r line
  do
  #awk '/RAM/ {print $2,$10,$14}' >> tegra_out.txt
  #awk '/MiB/ {print $10,$11,$14}' | cut -c 1-4
  # After feeding the gpu_stats file, below will give you the GPU consumption data
    awk '/MiB/ {print $11,$12}'
done < "$input"
}

if [[ $2==gpu  ]] ; then
    echo "inside gpu"
    #cut_gpu
elif [[ $2==cpu ]] ; then
    echo "inside cpu"
else
    echo "enter cpu"
fi
