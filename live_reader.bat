@echo off
title Live file viewer
cls

::Chooses the site to read. This is what you change if you want to use your own site.
set site=http://maxwellcrafter.com/stuff/live

:beginning

::Adds a 10 second pause between updates. To add a 5 second pause instead, you would change the 11 to a 6
ping 127.0.0.1 -n 11 >nul

::Save the content of the chosen site to a temp file named "live.tmp"
bitsadmin /transfer myDownloadJob /download /priority normal %site% %cd%\live.tmp >nul

::Reads the website content from the temp file, then deletes the temp file
if exist %cd%\live.tmp cls
if exist %cd%\live.tmp type live.tmp
if exist %cd%\live.tmp del live.tmp

goto beginning
::This program was created by Maxwell Fisher