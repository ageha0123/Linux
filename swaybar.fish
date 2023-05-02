#!/bin/fish
while true
  if test (pamixer --get-volume) -gt 49
    echo  (echo (cat "/sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon2"/temp1_input) / 1000 | bc)°C "  "(pamixer --get-volume)"   "(date +"%H:%M:%S")
  else
    echo  (echo (cat "/sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon2"/temp1_input) / 1000 | bc)°C "  "(pamixer --get-volume)"   "(date +"%H:%M:%S")
  end
  sleep 0.1
end

