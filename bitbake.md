# help

```shell
pi@inspiron:~/yocto/build-openstlinuxweston-stm32mp1$ bitbake linux-stm32mp -c listtasks
NOTE: Started PRServer with DBfile: /home/pi/yocto/build-openstlinuxweston-stm32mp1/cache/prserv.sqlite3, Address: 127.0.0.1:40467, PID: 3856166
Loading cache: 100% |########################################################################################################################################################################| Time: 0:00:01
Loaded 4880 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "2.4.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-ostl-linux-gnueabi"
MACHINE              = "stm32mp1"
DISTRO               = "openstlinux-weston"
DISTRO_VERSION       = "4.2.2-snapshot-20240107"
TUNE_FEATURES        = "arm vfp cortexa7 neon vfpv4 thumb callconvention-hard"
TARGET_FPU           = "hard"
DISTRO_CODENAME      = "mickledore"
ACCEPT_EULA_stm32mp1 = "1"
GCCVERSION           = "12.%"
PREFERRED_PROVIDER_virtual/kernel = "linux-stm32mp"
meta-python          
meta-oe              
meta-gnome           
meta-initramfs       
meta-multimedia      
meta-networking      
meta-webserver       
meta-filesystems     
meta-perl            = "HEAD:03fd1d368ac19793b3e4c35159ba2ce802247e4d"
meta-st-stm32mp      = "HEAD:b0af85c466d96d5f794b125b2542b7a0ea4c91de"
meta-qt5             = "HEAD:cf6ffcbad5275a3428f6046468a0c9d572e813d1"
meta-st-openstlinux  = "HEAD:6526808593a93f5da31dbb05dd5b0bc3d27d4d2c"
meta                 = "HEAD:3ef283e02b0b91daf64c3a589e1f6bb68d4f5aa1"
workspace            = "<unknown>:<unknown>"

Initialising tasks: 100% |###################################################################################################################################################################| Time: 0:00:00
Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 0 (0% match, 0% complete)
NOTE: No setscene tasks
NOTE: Executing Tasks
do_build                               Default task for a recipe - depends on all other normal tasks required to 'build' a recipe
do_build_without_rm_work               
do_bundle_initramfs                    Combines an initial ramdisk image and kernel together to form a single image
do_checkuri                            Validates the SRC_URI value
do_clean                               Removes all output files for a target
do_cleanall                            Removes all output files, shared state cache, and downloaded source files for a target
do_cleansstate                         Removes all output files and shared state cache for a target
do_compile                             Compiles the source in the compilation directory
do_compile_kernelmodules               Compiles loadable modules for the Linux kernel
do_configure                           Configures the source by enabling and disabling any build-time and configuration options for the software being built
do_create_flashlayout_config_setscene   (setscene version)
do_deploy                              Writes deployable output files to the deploy directory
do_deploy_setscene                     Writes deployable output files to the deploy directory (setscene version)
do_deploy_source_date_epoch            
do_deploy_source_date_epoch_setscene    (setscene version)
do_devshell                            Starts a shell with the environment set up for development/debugging
do_diffconfig                          Compares the old and new config files after running do_menuconfig for the kernel
do_fetch                               Fetches the source code
do_install                             Copies files from the compilation directory to a holding area
do_kernel_link_images                  Creates a symbolic link in arch/$arch/boot for vmlinux and vmlinuz kernel images
do_listtasks                           Lists all defined tasks for a target
do_menuconfig                          Runs 'make menuconfig' for the kernel
do_package                             Analyzes the content of the holding area and splits it into subsets based on available packages and files
do_package_qa                          Runs QA checks on packaged files
do_package_qa_setscene                 Runs QA checks on packaged files (setscene version)
do_package_setscene                    Analyzes the content of the holding area and splits it into subsets based on available packages and files (setscene version)
do_package_write_deb                   Creates the actual DEB packages and places them in the Package Feed area
do_package_write_deb_setscene          Creates the actual DEB packages and places them in the Package Feed area (setscene version)
do_packagedata                         Creates package metadata used by the build system to generate the final packages
do_packagedata_setscene                Creates package metadata used by the build system to generate the final packages (setscene version)
do_patch                               Locates patch files and applies them to the source code
do_populate_lic                        Writes license information for the recipe that is collected later when the image is constructed
do_populate_lic_setscene               Writes license information for the recipe that is collected later when the image is constructed (setscene version)
do_populate_sysroot                    Copies a subset of files installed by do_install into the sysroot in order to make them available to other recipes
do_populate_sysroot_setscene           Copies a subset of files installed by do_install into the sysroot in order to make them available to other recipes (setscene version)
do_prepare_recipe_sysroot              
do_pydevshell                          Starts an interactive Python shell for development/debugging
do_rm_work                             Removes work files after the build system has finished with them
do_rm_work_all                         Top-level task for removing work files after the build system has finished with them
do_savedefconfig                       Creates a minimal Linux kernel configuration file
do_shared_workdir                      
do_shared_workdir_setscene              (setscene version)
do_sizecheck                           Checks the size of the kernel image against KERNEL_IMAGE_MAXSIZE (if set)
do_strip                               Strips unneeded sections out of the Linux kernel image
do_symlink_kernsrc                     
do_transform_kernel                    
do_unpack                              Unpacks the source code into a working directory
NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be rerun and all succeeded.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 4 seconds
```

# example

```shell
bitbake -s
bitbake virtual/kernel -c menuconfig 
```



```shell
bitbake i2c-tools -c listtasks
```

# variable


```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake -e linux-yocto | grep "^S="
S="/home/pi/Documents/yocto/poky/build/tmp/work-shared/qemux86-64/kernel-source"
```



```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake -e linux-yocto | grep "^WORKDIR="
WORKDIR="/home/pi/Documents/yocto/poky/build/tmp/work/qemux86_64-poky-linux/linux-yocto/5.15.124+gitAUTOINC+f484a7f175_1c09be01f4-r0"
```



```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake -e linux-yocto | grep "^B="
B="/home/pi/Documents/yocto/poky/build/tmp/work/qemux86_64-poky-linux/linux-yocto/5.15.124+gitAUTOINC+f484a7f175_1c09be01f4-r0/linux-qemux86_64-standard-build"
```



```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake -e linux-yocto | grep "^FILE="
FILE="/home/pi/Documents/yocto/poky/meta/recipes-kernel/linux/linux-yocto_5.15.bb"
```



```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake -e linux-yocto | grep "^PACKAGES="
PACKAGES="kernel kernel-base kernel-vmlinux kernel-image kernel-dev kernel-modules kernel-dbg kernel-image-bzimage kernel-devicetree"
```



```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake -e linux-yocto | grep "^PV="
PV="5.15.124+gitAUTOINC+f484a7f175_1c09be01f4"
```



```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake -e linux-yocto | grep "^T="
T="/home/pi/Documents/yocto/poky/build/tmp/work/qemux86_64-poky-linux/linux-yocto/5.15.124+gitAUTOINC+f484a7f175_1c09be01f4-r0/temp"
```