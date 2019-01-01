@echo off

Echo "preparing for deleting the TEMP files and Internet Cache"
Echo "Calculating Settings..."

Echo .
Echo "Deleting Temporary Files from your system FOR WIN 95/98/ME/NT..."
del "C:\WINDOWS\TEMP\*.*" /s /q /f
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Temporary Internet Files from your system FOR WIN 95/98/ME/NT..."
del "C:\WINDOWS\Temporary Internet Files\*.*" /s /q /f
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Downloaded Program Files from your system FOR WIN 95/98/ME/NT..."
del "C:\WINDOWS\Downloaded Program Files\*.*" /s /q /f
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Cookies from your system FOR WIN 95/98/ME/NT..."
del "C:\WINDOWS\Cookies\*.*" /s /q /f
Echo %ERRORLEVEL%

Echo .
Echo "Deleting History from your system FOR WIN 95/98/ME/NT..."
del "C:\WINDOWS\History\*.*" /s /q /f
RD "C:\WINDOWS\History\History.IE5" /s /q
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Temporary Files from your profile..."
del "%userprofile%\Local Settings\Temp\*.*" /s /q /f
RD "%userprofile%\Local Settings\Temp" /s /q
md "%userprofile%\Local Settings\Temp"
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Temporary Files from your profile..."
del "%userprofile%\Local Settings\Temporary Internet Files\*.*" /s /q /f
Echo %ERRORLEVEL%


Echo .
Echo "Deleting Temporary Files from your system..."
del "%SystemDrive%\Temp\*.*" /s /q /f
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Temporary Files from your system..."
del "%Systemroot%\Temp\*.*" /s /q /f
RD "%Systemroot%\Temp" /s /q
md "%Systemroot%\Temp"
Echo %ERRORLEVEL%


Echo .
Echo "Prefetch Files from your system..."
del "%Systemroot%\Prefetch\*.*" /s /q /f
RD "%Systemroot%\Prefetch" /s /q
md "%Systemroot%\Prefetch"
Echo %ERRORLEVEL%

Echo .
Echo "Deleting ALL Temporary Files from your system & Other's Users Profile ..."
del *.tmp /s/q/f/a:-h,h 
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Cookies from your profile..."
del "%userprofile%\Cookies\*.*" /s /q /f
RD "%userprofile%\Cookies" /s /q
md "%userprofile%\Cookies
Echo %ERRORLEVEL%

Echo .
Echo "Deleting History from your profile..."
del "%userprofile%\Local Settings\History\*.*" /s /q /f
RD "%userprofile%\Local Settings\History" /s /q
md "%userprofile%\Local Settings\History
Echo %ERRORLEVEL%

Echo .
Echo "Deleting My Recent Documents from your profile..."
del "%userprofile%\Recent\*.*" /s /q /f
RD "%userprofile%\Recent" /s /q
md "%userprofile%\Recent
Echo %ERRORLEVEL%

Echo .
Echo "Deleting Downloaded Program Files from your profile..."
del "%Systemroot%\Downloaded Program Files\*.*" /s /q /f
RD "%Systemroot%\Downloaded Program Files" /s /q
md "%Systemroot%\Downloaded Program Files
Echo %ERRORLEVEL%


Echo .
Echo "Deleting Templates for Microsoft Word from your profile..."
del "%userprofile%\Application Data\Microsoft\Templates\normal.dot" /s /q /f
Echo %ERRORLEVEL%

Echo .
Echo "Deleting ALL Templates for Microsoft Word from your system & Other's Users Profile ..."
del normal.dot /s/q/f/a:-h,h 

Echo .
Echo "Deleting Templates for Microsoft Outlook from your profile..."
del "%userprofile%\Application Data\Microsoft\Outlook\Outcmd.dat" /s /q /f
Echo %ERRORLEVEL%

Echo .
Echo "Deleting ALL Templates for Microsoft Outlook from your system & Other's Users Profile ..."
del outcmd.dat /s/q/f/a:-h,h 
Echo .

Echo .
Echo "Deleting Templates for Microsoft Excel from your profile..."
del *.xlb /s/q/f/a:-h,h 
Echo %ERRORLEVEL%

Echo "Deleting Citrix Cache from your profile ....."
del "%userprofile%\Application Data\ICAClient\Cache\*.*" /s /q /f
Echo %ERRORLEVEL%

Echo Completed...

