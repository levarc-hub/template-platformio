# PlatformIO devcontainer

## Useful PlatformIO commands

```sh
pio project init
pio run
pio run -t upload
pio device list
pio device monitor
```

## USBIPD

```sh
# open PowerShell with admin access
winget install usbipd

# open another powershell window
usbipd list

# Output:
BUSID  VID:PID    DEVICE
1-2    2341:0043  Arduino Uno
1-3    10c4:ea60  CP2102 USB to UART Bridge

# attach device
usbipd attach --wsl --busid <BUSID>

# check inside WSL
ls /dev/ttyUSB*
ls /dev/ttyACM*
```
