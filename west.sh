# HOST=192.168.31.178
HOST=192.168.7.1

if [ "${ARCH}" != "arm" ]
then
    echo "source ~/STMicroelectronics/SDK/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi"
    exit 0
fi

if [ $# == 1 ]
then
    if [ ${1} == 1 ]
    then
        echo "1"
        make ARCH=arm dtbs
    elif [ ${1} == 2 ]
    then
        echo "2"
        scp /home/pi/STMicroelectronics/linux-stm32mp/arch/arm/boot/dts/stm32mp157f-dk2*dtb root@${HOST}:/boot
    elif [ ${1} == 3 ]
    then
        echo "3"
        make ARCH=arm uImage vmlinux dtbs LOADADDR=0xC2000040
        #make ARCH=arm modules
    elif [ ${1} == 4 ]
    then
        echo "4"
        scp arch/arm/boot/uImage root@${HOST}:/boot
    elif [ ${1} == 5 ]
    then
        echo "5"
        #echo "copy file from stm32mp1 to ubuntu."
        #scp root@${HOST}:/etc/ntp.conf /home/pi/STMicroelectronics/backup/
        #scp -r root@${HOST}:/home/ /home/pi/STMicroelectronics/backup/
        #scp -r /home/pi/STMicroelectronics/backup/home/weston/Videos root@${HOST}:/home/weston
        #scp -r /home/pi/STMicroelectronics/backup/home/weston/video.sh root@${HOST}:/home/weston
        scp -r /home/pi/STMicroelectronics/backup/home/root/project root@${HOST}:/home/root
        scp -r /home/pi/STMicroelectronics/backup/home/root/wayland root@${HOST}:/home/root
        scp -r /home/pi/STMicroelectronics/backup/home/root/connection root@${HOST}:/home/root
    elif [ ${1} == 6 ]
    then
        echo "6"
        #project=button
        #project=iio
        scp -r /home/pi/app/arm/stm32mp157f-dk2/${project}/* root@${HOST}:/home/root/project/${project}
    elif [ ${1} == 7 ]
    then
        echo "7"
        gst-launch-1.0 filesrc location=/home/pi/Pictures/arduino.png ! decodebin ! imagefreeze ! videoconvert ! autovideosink
    elif [ ${1} == 8 ]
    then
        echo "8"
        ping -c 4 ${HOST}
    elif [ ${1} == 9 ]
    then
        echo "9"
        #scp /home/pi/Videos/st7789/output/great.mp4 root@${HOST}:/home/weston/Videos
        #scp /home/pi/Videos/st7789/output/*.mp4 root@${HOST}:/home/weston/Videos
        #scp /home/pi/Pictures/arduino.png root@${HOST}:/home/root
        scp /home/pi/Videos/480x800/shaTan.mp4 root@${HOST}:/home/weston/Videos
    else
        echo "unsupported."
    fi
fi

