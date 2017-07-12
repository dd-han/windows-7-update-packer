@echo off

cd /d %~dp0
rem using empty partition or VHD for this script
rem or you will lost data
set TEMP_DRIVER=F:

for %%N in (1 2 3 4 5) do (
  format %TEMP_DRIVER% /FS:NTFS /Q /Y
  dism /apply-image /imagefile:tw_windows_7_ultimate_with_sp1_x86_dvd_u_677488\sources\install.wim /index:%%N /ApplyDir:%TEMP_DRIVER%\
  x86_list.cmd %TEMP_DRIVER%\
  Dism /Capture-Image /ImageFile:install_patch_x86.wim /CaptureDir:%TEMP_DRIVER% /Name:%%N
)

for %%N in (1 2 3 4) do (
  format %TEMP_DRIVER% /FS:NTFS /Q /Y
  dism /apply-image /imagefile:tw_windows_7_ultimate_with_sp1_x64_dvd_u_677414\sources\install.wim /index:%%N /ApplyDir:%TEMP_DRIVER%\
  x86_list.cmd %TEMP_DRIVER%\
  Dism /Capture-Image /ImageFile:install_patch_x86.wim /CaptureDir:%TEMP_DRIVER% /Name:%%N
)

pause