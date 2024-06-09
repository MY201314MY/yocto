# xxxxxxxxxx export https_proxy=http://127.0.0.1:7890export http_proxy=http://127.0.0.1:7890​export ADF_PATH=/home/pi/espressif/esp-adfexport IDF_PATH=/home/pi/espressif/esp-adf/esp-idf​#export PATH=$PATH:/home/pi/.bin/zephyr-sdk-0.16.1/sysroots/x86_64-pokysdk-linux/usr/binexport HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S --> "​shell

```shelll
pi@inspiron:~$ repo --help
usage: repo COMMAND [ARGS]

repo is not yet installed.  Use "repo init" to install it here.

The most commonly used repo commands are:

  init      Install repo in the current working directory
  help      Display detailed help on a command

For access to the full online help, install repo ("repo init").

Bug reports: https://issues.gerritcodereview.com/issues/new?component=1370071
```

# example

```shell
repo init -u https://github.com/stm32mpu-oem/oe-manifest.git
repo sync
```



```shell
DISTRO=openstlinux-weston MACHINE=stm32mp25 source layers/meta-st/scripts/envsetup.sh
bitbake st-image-weston
```



```shell
repo status
nothing to commit (working directory clean)

repo list
layers/meta-openembedded : meta-openembedded
layers/meta-qt5 : meta-qt5/meta-qt5
layers/meta-st/meta-st-openstlinux : meta-st-openstlinux
layers/meta-st/meta-st-stm32mp : meta-st-stm32mp
layers/meta-st/meta-st-stm32mp-addons : meta-st-stm32mp-addons
layers/meta-st/scripts : meta-st-scripts
layers/openembedded-core : openembedded-core
layers/openembedded-core/bitbake : bitbake

repo info
Manifest branch: 
Manifest merge branch: refs/heads/mickledore-stm32mp25
Manifest groups: default,platform-linux
----------------------------
Project: meta-openembedded
Mount path: /home/pi/yocto/layers/meta-openembedded
Current revision: 03fd1d368ac19793b3e4c35159ba2ce802247e4d
Manifest revision: 03fd1d368ac19793b3e4c35159ba2ce802247e4d
Local Branches: 0
----------------------------
Project: meta-qt5/meta-qt5
Mount path: /home/pi/yocto/layers/meta-qt5
Current revision: cf6ffcbad5275a3428f6046468a0c9d572e813d1
Manifest revision: cf6ffcbad5275a3428f6046468a0c9d572e813d1
Local Branches: 0
----------------------------
Project: meta-st-openstlinux
Mount path: /home/pi/yocto/layers/meta-st/meta-st-openstlinux
Current revision: 6526808593a93f5da31dbb05dd5b0bc3d27d4d2c
Manifest revision: 6526808593a93f5da31dbb05dd5b0bc3d27d4d2c
Local Branches: 0
----------------------------
Project: meta-st-stm32mp
Mount path: /home/pi/yocto/layers/meta-st/meta-st-stm32mp
Current revision: e52a1f18c6b1eae8402533ee19a5078fb029e022
Manifest revision: e52a1f18c6b1eae8402533ee19a5078fb029e022
Local Branches: 0
----------------------------
Project: meta-st-stm32mp-addons
Mount path: /home/pi/yocto/layers/meta-st/meta-st-stm32mp-addons
Current revision: 83706a50284e78c593856cc1902cf3949011a51f
Manifest revision: 83706a50284e78c593856cc1902cf3949011a51f
Local Branches: 0
----------------------------
Project: meta-st-scripts
Mount path: /home/pi/yocto/layers/meta-st/scripts
Current revision: 83f470a922383024c1f11086a2a7901f89f98098
Manifest revision: 83f470a922383024c1f11086a2a7901f89f98098
Local Branches: 0
----------------------------
Project: openembedded-core
Mount path: /home/pi/yocto/layers/openembedded-core
Current revision: 3ef283e02b0b91daf64c3a589e1f6bb68d4f5aa1
Manifest revision: 3ef283e02b0b91daf64c3a589e1f6bb68d4f5aa1
Local Branches: 0
----------------------------
Project: bitbake
Mount path: /home/pi/yocto/layers/openembedded-core/bitbake
Current revision: 08033b63ae442c774bd3fce62844eac23e6882d7
Manifest revision: 08033b63ae442c774bd3fce62844eac23e6882d7
Local Branches: 0
----------------------------
```

