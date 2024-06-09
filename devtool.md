#  pi@inspiron:~$ du -sh yocto37G yoctoshell

```shell
pi@inspiron:~$ devtool --help
NOTE: Starting bitbake server...
NOTE: Started PRServer with DBfile: /home/pi/yocto/build-openstlinuxweston-stm32mp1/cache/prserv.sqlite3, Address: 127.0.0.1:45109, PID: 5518
usage: devtool [--basepath BASEPATH] [--bbpath BBPATH] [-d] [-q] [--color COLOR] [-h] <subcommand> ...

OpenEmbedded development tool

options:
  --basepath BASEPATH   Base directory of SDK / build directory
  --bbpath BBPATH       Explicitly specify the BBPATH, rather than getting it from the metadata
  -d, --debug           Enable debug output
  -q, --quiet           Print only errors
  --color COLOR         Colorize output (where COLOR is auto, always, never)
  -h, --help            show this help message and exit

subcommands:
  Beginning work on a recipe:
    add                   Add a new recipe
    modify                Modify the source for an existing recipe
    upgrade               Upgrade an existing recipe
  Getting information:
    status                Show workspace status
    latest-version        Report the latest version of an existing recipe
    check-upgrade-status  Report upgradability for multiple (or all) recipes
    search                Search available recipes
  Working on a recipe in the workspace:
    build                 Build a recipe
    rename                Rename a recipe file in the workspace
    edit-recipe           Edit a recipe file
    find-recipe           Find a recipe file
    configure-help        Get help on configure script options
    update-recipe         Apply changes from external source tree to recipe
    reset                 Remove a recipe from your workspace
    finish                Finish working on a recipe in your workspace
  Testing changes on target:
    deploy-target         Deploy recipe output files to live target machine
    undeploy-target       Undeploy recipe output files in live target machine
    build-image           Build image including workspace recipe packages
  Advanced:
    create-workspace      Set up workspace in an alternative location
    import                Import exported tar archive into workspace
    extract               Extract the source for an existing recipe
    sync                  Synchronize the source tree for an existing recipe
    menuconfig            Alter build-time configuration for a recipe
    export                Export workspace into a tar archive
Use devtool <subcommand> --help to get help on a specific command
```

# example

````shell
pi@inspiron:~/yocto/build-openstlinuxweston-stm32mp1/workspace/sources/linux-stm32mp$ devtool search weston
NOTE: Starting bitbake server...
NOTE: Started PRServer with DBfile: /home/pi/yocto/build-openstlinuxweston-stm32mp1/cache/prserv.sqlite3, Address: 127.0.0.1:36823, PID: 5574
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#1)... (22:28:01.462505)
NOTE: Started PRServer with DBfile: /home/pi/yocto/build-openstlinuxweston-stm32mp1/cache/prserv.sqlite3, Address: 127.0.0.1:46873, PID: 5590
Loading cache: 100% |########################################################################################################################################################################| Time: 0:00:02
Loaded 4880 entries from dependency cache.
Parsing recipes: 100% |######################################################################################################################################################################| Time: 0:00:01
Parsing of 3068 .bb files complete (3067 cached, 1 parsed). 4880 targets, 563 skipped, 0 masked, 0 errors.
wayland-utils         Wayland utilities
demo-launcher         Python script which launch several use-cases
weston-cube           3D cube for wayland/weston windows
weston-init           Startup script and systemd unit file for the Weston Wayland compositor
weston                Weston, a Wayland compositor
core-image-weston     A very basic Wayland image with a terminal
core-image-weston-sdk  A very basic Wayland image with a terminal
packagegroup-core-weston  Basic Weston compositor setup
st-image-weston       OpenSTLinux weston image with basic Wayland support (if enable in distro).
```
````



```shell
devtool modify virtual/kernel

devtool status
NOTE: Starting bitbake server...
NOTE: Started PRServer with DBfile: /home/pi/yocto/build-openstlinuxweston-stm32mp25/cache/prserv.sqlite3, Address: 127.0.0.1:36973, PID: 5113
linux-stm32mp: /home/pi/yocto/build-openstlinuxweston-stm32mp25/workspace/sources/linux-stm32mp
```



```shell
devtool status
```



