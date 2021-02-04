#### NOTES about running matlab on the backstage
>04.02.2021  
@GFZ, Potsdam

```bash
# note there are some difference when redirecting the stdout and stderr...

# bash:
nohup -nodesktop -nosplash -batch batching_stamps3 >log.txt 2>&1 &

# csh:
# note 'nohup -nodesktop -nodisplay -r batching_stamps3 >&log.txt &' seems cannot work on the servers
nohup -nodesktop -nosplash -batch batching_stamps3 >& log.txt &

# you can check the PID with jobs or htop:
ps
jobs
htop

# you can kill the job with the following command:
# the difference of 'kill -9' and 'kill' is: 'kill' means termination, the program will stop running
# and exitting by itself; 'kill -9' means the program should exit RIGHT NOW without any conditions.

kill PID
kill -9 PID
```
