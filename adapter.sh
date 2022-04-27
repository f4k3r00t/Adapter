#! /bin/bash
echo 'To enable Monitor mode and test packet injection:'
echo '!================================================='
sleep 1
sudo ifconfig ADAPTER down
sudo airmon-ng check kill
sudo iwconfig ADAPTER mode monitor
sudo ifconfig ADAPTER up
sleep 1
iwconfig
sleep 2
sudo aireplay-ng --test ADAPTER
