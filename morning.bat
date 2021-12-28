@ECHO OFF
::===============================
:: Set Screen Size and Color
::===============================
mode con:cols=60 lines=10
color 02

::===============================
:: Welcome Message
::===============================
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO                      : Good Morning   :
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO.
ECHO.
ECHO.
TIMEOUT /t 3 >nul
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO                      : Getting to it  :
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO.
ECHO.
ECHO.
TIMEOUT /t 3 >nul
CLS
::===============================
:: Actually doing some work here
::===============================

ECHO.
ECHO.
ECHO.
ECHO.
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO                      : Start Outlook  :
ECHO                      :~~~~~~~~~~~~~~~~:
Start /min Outlook.exe
timeout /t 10 >nul
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO                      : Start Chrome   :
ECHO                      :~~~~~~~~~~~~~~~~:
Start /min Chrome.exe
timeout /t 10 >nul
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO                      : Start Mitel    :
ECHO                      :~~~~~~~~~~~~~~~~:
Start /min Mitel.exe
timeout /t 10 >nul
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO                      : Start Teams    :
ECHO                      :~~~~~~~~~~~~~~~~:
powershell.exe Start-Process -FilePath "$env:LOCALAPPDATA\Microsoft\Teams\Update.exe" -ArgumentList '--processStart "Teams.exe"'
timeout /t 10 >nul
CLS
ECHO.
ECHO.
ECHO.
ECHO.
:ECHO                      :~~~~~~~~~~~~~~~~:
:ECHO                      : Start OneDrive :
:ECHO                      :~~~~~~~~~~~~~~~~:
"%userprofile%\AppData\Local\Microsoft\OneDrive\OneDrive.exe"
:timeout /t 10 >nul
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                      :~~~~~~~~~~~~~~~~:
ECHO                      : Start NOTES    :
ECHO                      :~~~~~~~~~~~~~~~~:
notepad "%userprofile%\desktop\comments.notes.txt"
timeout /t 10 >nul
cls
color 81
ECHO.
ECHO.
ECHO.
ECHO          :------------------------------------------:
ECHO          :                                          :
ECHO          :--    Morning applications running  --    :
ECHO          :--                       Thank you  --    :
ECHO          :                                          :
ECHO          :------------------------------------------:

timeout /t 10 >nul