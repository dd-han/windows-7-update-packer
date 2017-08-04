@echo off

cd /d %~dp0
echo using empty partition or VHD for this script
echo or you will lost data
set TEMP_DRIVER=F:

for %%N in (1 2 3 4 5) do (
  echo x86 %%N
  format %TEMP_DRIVER% /FS:NTFS /Q /Y
  dism /apply-image /imagefile:tw_windows_7_ultimate_with_sp1_x86_dvd_u_677488\sources\install.wim /index:%%N /ApplyDir:%TEMP_DRIVER%\
  start /wait x86_list.cmd %TEMP_DRIVER%\
  if %%N == 1 (
    dism /Capture-Image /ImageFile:install_patch_x86.wim /CaptureDir:%TEMP_DRIVER% /Name:%%N
  ) ELSE (
    dism /Append-Image /ImageFile:install_patch_x86.wim /CaptureDir:%TEMP_DRIVER% /Name:%%N
  )
)

for %%N in (1 2 3 4) do (
  echo x64 %%N
  format %TEMP_DRIVER% /FS:NTFS /Q /Y
  dism /apply-image /imagefile:tw_windows_7_ultimate_with_sp1_x64_dvd_u_677414\sources\install.wim /index:%%N /ApplyDir:%TEMP_DRIVER%\
  start /wait x86_64_list.cmd %TEMP_DRIVER%\
  if %%N == 1 (
    dism /Capture-Image /ImageFile:install_patch_x86_64.wim /CaptureDir:%TEMP_DRIVER% /Name:%%N
  ) ELSE (
    dism /Append-Image /ImageFile:install_patch_x86_64.wim /CaptureDir:%TEMP_DRIVER% /Name:%%N
  )
)

pause