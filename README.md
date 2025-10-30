# TWRP Device Tree for Samsung Galaxy S21 FE Exynos (5G) 

## Clone repo
```bash 
git clone -b https://github.com/bekirakil-0/android_device_samsung_r9s.git
```

## Build 
```bash
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_BUILD_DEVICE=r9s
export LC_ALL="C"
export FOX_VANILLA_BUILD=1
source build/envsetup.sh
lunch twrp_r9s-eng && mka adbd recoveryimage
```
