
- `watch -n 1 ./cpu_data_capture.sh` -> This will run the command for every 1 seconds
- `nvidia-smi | sed -n 10p | cut -c 38-44` -> cuts the GPU RAM value from `nvidia-smi`
	- Output -> `636MiB`
- `nvidia-smi | sed -n 10p | awk '/MiB/ {print $9,$13}'` - cuts both the RAM and percentage
	- Output -> `636MiB 2%`
- Added `tegrastats_cut.sh` script to cut the data from `tegrastats.txt`. This will look for "RAM" keyword and outputs the appropriate fields from that line. 

Reference -> https://blog.knoldus.com/play-with-text-in-linux-grep-cut-awk-sed/

Additonal monitoring -> https://phoenixnap.com/kb/check-cpu-usage-load-linux

mpstat usage guide -> https://www.virtono.com/community/tutorial-how-to/linux-cpu-performance-measurements-with-mpstat/
