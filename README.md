
- `watch -n 1 ./cpu_data_capture.sh` -> This will run the command for every 1 seconds
- `nvidia-smi | sed -n 10p | cut -c 38-44` -> cuts the GPU RAM value from `nvidia-smi`
	- Output -> `636MiB`
- `nvidia-smi | sed -n 10p | awk '/MiB/ {print $9,$13}'` - cuts both the RAM and percentage
	- Output -> `636MiB 2%`
- Added `tegrastats_cut.sh` script to cut the data from `tegrastats.txt`. This will look for "RAM" keyword and outputs the appropriate fields from that line. 
- sar -u 1 -> Gives the stats every 1 second.

## New method
```
	nvidia-smi --format=csv --query-gpu=utilizatn.gpu,utilization.memory,temperature.gpu,memory.used,memory.free,memory.reserved,memory.total,pstate,fan.speed,power.draw -lms 1000
```
- Run `script` command after executing the above.
- Once the file is saved. Execute the `data_cut.sh` script.
	- The format is `bash data_cut.sh filename`
- 

Reference -> https://blog.knoldus.com/play-with-text-in-linux-grep-cut-awk-sed/

Additonal monitoring -> https://phoenixnap.com/kb/check-cpu-usage-load-linux

mpstat usage guide -> https://www.virtono.com/community/tutorial-how-to/linux-cpu-performance-measurements-with-mpstat/

Script in linux guide -> https://www.geeksforgeeks.org/script-command-in-linux-with-examples/

Sar guide -> https://www.computerhope.com/unix/usar.htm#:~:text=The%20sar%20command%20writes%20to,the%20specified%20intervals%20in%20seconds.

