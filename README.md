### Cron 
`crontab -e`

### Timebased

UTC


```
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games
# Every minute from 7-19 on workdays
* 6-18 * * 1-5 cd /home/pi/timelapse/tools && sh script.sh>>script.log
# Every ten minutes from 7-19 on weekends
*/10 6-18 * * 6-7 cd /home/pi/timelapse/tools && sh script.sh>>script.log
# At 20, 0 and 4 oclock (nighttime)
0 19,23,3 * * * cd /home/pi/timelapse/tools && sh script.sh>>script.log

```