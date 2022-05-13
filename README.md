
- `watch -n 1 ./cpu_data_capture.sh` -> This will run the command for every 1 seconds
- `nvidia-smi | sed -n 10p | cut -c 38-44` -> cuts the GPU RAM value from `nvidia-smi`
	- Output -> `636MiB`
- `nvidia-smi | sed -n 10p | awk '/MiB/ {print $9,$13}'` - cuts both the RAM and percentage
	- Output -> `636MiB 2%`

Reference -> https://blog.knoldus.com/play-with-text-in-linux-grep-cut-awk-sed/
