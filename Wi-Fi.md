```shell
ifconfig wlan0 up
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf

sleep 2

iw wlan0 link 
udhcpc -i wlan0
```

