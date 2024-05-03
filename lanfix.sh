modprobe -r e1000e
echo 1 | tee "/sys/bus/pci/devices/0000:00:19.0/reset"
modprobe e1000e
