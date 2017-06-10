color b
@echo off
cls
set version=2.1.0
mode 120,30
set patchingok=1
chcp 65001
set language=English
title Animal Crossing: City Folk - Wiimmfi+RC24 patcher
goto begin
:error_files
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo  [*] ERROR.
echo.
echo It seems that error has occurred.
echo.
echo File check has failed. Please redownload this package or unpack it.
echo.
echo Cannot continue, press anything to exit patcher.
echo.
pause>NUL
set patchingok=0
goto exit_patcher

:begin
set /a logging=0

if not exist cygattr-1.dll goto error_files
if not exist cygffi-6.dll goto error_files
if not exist cyggcc_s-1.dll goto error_files
if not exist cyggmp-10.dll goto error_files
if not exist cyggnutls-28.dll goto error_files
if not exist cyghogweed-2.dll goto error_files
if not exist cygiconv-2.dll goto error_files
if not exist cygidn2-0.dll goto error_files
if not exist cygidn-11.dll goto error_files
if not exist cygintl-8.dll goto error_files
if not exist cygncursesw-10.dll goto error_files
if not exist cygnettle-4.dll goto error_files
if not exist cygp11-kit-0.dll goto error_files
if not exist cygpcre-1.dll goto error_files
if not exist cygpng16-16.dll goto error_files
if not exist cygpsl-5.dll goto error_files
if not exist cygreadline7.dll goto error_files
if not exist cygsigsegv-2.dll goto error_files
if not exist cygtasn1-6.dll goto error_files
if not exist cygunistring-2.dll goto error_files
if not exist cyguuid-1.dll goto error_files
if not exist cygwin1.dll goto error_files
if not exist cygz.dll goto error_files
if not exist wbmgt.exe goto error_files
if not exist wit.exe goto error_files
]
if not exist ../BMG/ENG/NPC_gatekeeperA.txt goto error_files
if not exist ../BMG/ENG/NPC_periko.txt goto error_files
if not exist ../BMG/ENG/NPC_perimi.txt goto error_files
if not exist ../BMG/ENG/NPC_tel.txt goto error_files
if not exist ../BMG/ENG/script.arc goto error_files
if not exist ../BMG/ENG/SYS_Bus.txt goto error_files
if not exist ../BMG/ENG/SYS_NetworkError.txt goto error_files
if not exist ../BMG/ENG/SYS_Start.txt goto error_files

if not exist ../BMG/FRA/NPC_gatekeeperA.txt goto error_files
if not exist ../BMG/FRA/NPC_periko.txt goto error_files
if not exist ../BMG/FRA/NPC_perimi.txt goto error_files
if not exist ../BMG/FRA/NPC_tel.txt goto error_files
if not exist ../BMG/FRA/script.arc goto error_files
if not exist ../BMG/FRA/SYS_Bus.txt goto error_files
if not exist ../BMG/FRA/SYS_NetworkError.txt goto error_files
if not exist ../BMG/FRA/SYS_Start.txt goto error_files

if not exist ../BMG/GER/NPC_gatekeeperA.txt goto error_files
if not exist ../BMG/GER/NPC_periko.txt goto error_files
if not exist ../BMG/GER/NPC_perimi.txt goto error_files
if not exist ../BMG/GER/NPC_tel.txt goto error_files
if not exist ../BMG/GER/script.arc goto error_files
if not exist ../BMG/GER/SYS_Bus.txt goto error_files
if not exist ../BMG/GER/SYS_NetworkError.txt goto error_files
if not exist ../BMG/GER/SYS_Start.txt goto error_files

if not exist ../BMG/ITA/NPC_gatekeeperA.txt goto error_files
if not exist ../BMG/ITA/NPC_periko.txt goto error_files
if not exist ../BMG/ITA/NPC_perimi.txt goto error_files
if not exist ../BMG/ITA/NPC_tel.txt goto error_files
if not exist ../BMG/ITA/script.arc goto error_files
if not exist ../BMG/ITA/SYS_Bus.txt goto error_files
if not exist ../BMG/ITA/SYS_NetworkError.txt goto error_files
if not exist ../BMG/ITA/SYS_Start.txt goto error_files

if not exist ../BMG/JPN/NPC_gatekeeperA.txt goto error_files
if not exist ../BMG/JPN/NPC_periko.txt goto error_files
if not exist ../BMG/JPN/NPC_perimi.txt goto error_files
if not exist ../BMG/JPN/NPC_tel.txt goto error_files
if not exist ../BMG/JPN/script.arc goto error_files
if not exist ../BMG/JPN/SYS_Bus.txt goto error_files
if not exist ../BMG/JPN/SYS_NetworkError.txt goto error_files
if not exist ../BMG/JPN/SYS_Start.txt goto error_files

if not exist ../BMG/KOR/NPC_gatekeeperA.txt goto error_files
if not exist ../BMG/KOR/NPC_periko.txt goto error_files
if not exist ../BMG/KOR/NPC_perimi.txt goto error_files
if not exist ../BMG/KOR/NPC_tel.txt goto error_files
if not exist ../BMG/KOR/script.arc goto error_files
if not exist ../BMG/KOR/SYS_Bus.txt goto error_files
if not exist ../BMG/KOR/SYS_NetworkError.txt goto error_files
if not exist ../BMG/KOR/SYS_Start.txt goto error_files

if not exist ../BMG/SPA/NPC_gatekeeperA.txt goto error_files
if not exist ../BMG/SPA/NPC_periko.txt goto error_files
if not exist ../BMG/SPA/NPC_perimi.txt goto error_files
if not exist ../BMG/SPA/NPC_tel.txt goto error_files
if not exist ../BMG/SPA/script.arc goto error_files
if not exist ../BMG/SPA/SYS_Bus.txt goto error_files
if not exist ../BMG/SPA/SYS_NetworkError.txt goto error_files
if not exist ../BMG/SPA/SYS_Start.txt goto error_files
goto 3
:3
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo This program has been created by: KcrPL, Larsenv, PokeAcer549 and Shutterbug2000.
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo.
echo Do you want to start patching?
echo.
echo 1. Yes
echo 2. No, exit the patcher.
echo.
set /p s=Choose: 
if %s%==1 goto 4
if %s%==2 set patchingok=0
if %s%==2 goto exit_patcher
goto 3
:error_file_game
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo  [*] ERROR.
echo.
echo It seems that error has occurred.
echo.
echo There are no WBFS files present in that folder.
echo.
echo Cannot continue, press anything to exit patcher.
echo.
pause>NUL
set patchingok=0
goto exit_patcher

:4_error_accf
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo  [*] Info.
echo.
echo Folder accf-data must be removed before patching.
echo.
echo Do you want to remove that folder?
echo.
echo 1. Yes, delete
echo 2. No, exit the patcher.
echo.
set /p s=Choose: 
if %s%==1 goto 4_rem_accf
if %s%==2 set patchingok=0
if %s%==2 goto exit_patcher
goto 4_error_accf
:4_rem_accf
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo  [*] Info.
echo.
echo Please wait...
if exist accf-data rmdir accf-data /s /q
goto 4
:4
if exist accf-data goto 4_error_accf
if not exist *.wbfs goto error_file_game
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo.
echo Please wait. Patcher is now extracting your copy of Animal Crossing.
wit extract . -n RUU.01 --DEST ./accf-data/ --psel=DATA -ovv --wiimmfi
goto 4_analyze
:4_analyze
set checkforver=0
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo.
echo Please wait. Patcher is now analyzing your copy of Animal Crossing...
for /f %%i in ('wit id8 *.wbfs') do set VERSION=%%i

if "%VERSION%"=="RUUE01" (
	set OFFSET=80474CB8
	set BMG=USA
	set checkforver=1
	GOTO 5
	)
if "%VERSION%"=="RUUE01" (
	set OFFSET=80474F38
	set BMG=USA
	set checkforver=1
	GOTO 5
	)
if "%VERSION%"=="RUUJ01" (
	set OFFSET=80474DE8
	set BMG=JPN
	set checkforver=1
	GOTO 5
	)
if "%VERSION%"=="RUUK01" (
	set OFFSET=8047DE98
	set BMG=KOR
	set checkforver=1
	GOTO 5
	)
if "%VERSION%"=="RUUP01" (
	set OFFSET=804753F8
	set BMG=EUR
	set checkforver=1
	GOTO 5

	)
if "%VERSION%"=="RUUP01" (
	set OFFSET=80475678
	set BMG=EUR
	set checkforver=1
	GOTO 5
	)
goto 5
:5_error
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo  [*] ERROR.
echo.
echo This game isn't Animal Crossing: City Folk.
echo.
echo Press anything to exit this patcher.
pause>NUL
set patchingok=0
goto exit_patcher

:5
if %checkforver%==0 goto 5_error
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo.
echo Please wait. Patcher is now patching your copy of Animal Crossing...
wit dolpatch accf-data/sys/main.dol %OFFSET%=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D >NUL

if %BMG%==USA (
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/ENG/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_periko.bmg --patch replace=../BMG/ENG/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/ENG/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_tel.bmg --patch replace=../BMG/ENG/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/ENG/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/ENG/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_Start.bmg --patch replace=../BMG/ENG/SYS_Start.txt >NUL
	copy /b ..\BMG\ENG\script.arc accf-data\files\Script\ENG\script.arc >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/FRA/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_periko.bmg --patch replace=../BMG/FRA/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/FRA/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_tel.bmg --patch replace=../BMG/FRA/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/FRA/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/FRA/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/SYS_mess/SYS_Start.bmg --patch replace=../BMG/FRA/SYS_Start.txt >NUL
	copy /b ..\BMG\FRA\script.arc accf-data\files\Script\FRA\script.arc >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/SPA/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_periko.bmg --patch replace=../BMG/SPA/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/SPA/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_tel.bmg --patch replace=../BMG/SPA/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/SPA/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/SPA/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/SYS_mess/SYS_Start.bmg --patch replace=../BMG/ENG/SYS_Start.txt >NUL
	copy /b ..\BMG\SPA\script.arc accf-data\files\Script\SPA\script.arc >NUL
	)
if %BMG%==JPN (
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/JPN/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_periko.bmg --patch replace=../BMG/JPN/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/JPN/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_tel.bmg --patch replace=../BMG/JPN/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/JPN/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/JPN/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/SYS_mess/SYS_Start.bmg --patch replace=../BMG/JPN/SYS_Start.txt >NUL
	copy /b ..\BMG\JPN\script.arc accf-data\files\Script\JPN\script.arc >NUL
	)
if %BMG%==KOR (
	wbmgt patch accf-data/files/Script/KOR/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/KOR/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/KOR/NPC_SP/NPC_periko.bmg --patch replace=../BMG/KOR/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/KOR/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/KOR/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/KOR/NPC_SP/NPC_tel.bmg --patch replace=../BMG/KOR/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/KOR/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/KOR/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/KOR/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/KOR/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/KOR/SYS_mess/SYS_Start.bmg --patch replace=../BMG/KOR/SYS_Start.txt >NUL
	copy /b ..\BMG\KOR\script.arc accf-data\files\Script\KOR\script.arc >NUL
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/JPN/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_periko.bmg --patch replace=../BMG/JPN/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/JPN/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/NPC_SP/NPC_tel.bmg --patch replace=../BMG/JPN/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/JPN/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/JPN/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/JPN/SYS_mess/SYS_Start.bmg --patch replace=../BMG/JPN/SYS_Start.txt >NUL
	copy /b ..\BMG\JPN\script.arc accf-data\files\Script\JPN\script.arc >NUL
	)
if %BMG%==EUR (
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/ENG/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_periko.bmg --patch replace=../BMG/ENG/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/ENG/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_tel.bmg --patch replace=../BMG/ENG/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/ENG/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/ENG/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_Start.bmg --patch replace=../BMG/ENG/SYS_Start.txt >NUL
	copy /b ..\BMG\ENG\script.arc accf-data\files\Script\ENG\script.arc >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/FRA/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_periko.bmg --patch replace=../BMG/FRA/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/FRA/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/NPC_SP/NPC_tel.bmg --patch replace=../BMG/FRA/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/FRA/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/FRA/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/FRA/SYS_mess/SYS_Start.bmg --patch replace=../BMG/FRA/SYS_Start.txt >NUL
	copy /b ..\BMG\FRA\script.arc accf-data\files\Script\FRA\script.arc >NUL
	wbmgt patch accf-data/files/Script/GER/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/GER/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/GER/NPC_SP/NPC_periko.bmg --patch replace=../BMG/GER/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/GER/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/GER/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/GER/NPC_SP/NPC_tel.bmg --patch replace=../BMG/GER/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/GER/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/GER/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/GER/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/GER/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/GER/SYS_mess/SYS_Start.bmg --patch replace=../BMG/GER/SYS_Start.txt >NUL
	copy /b ..\BMG\GER\script.arc accf-data\files\Script\GER\script.arc >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/SPA/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_periko.bmg --patch replace=../BMG/SPA/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/SPA/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/NPC_SP/NPC_tel.bmg --patch replace=../BMG/SPA/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/SPA/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/SPA/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/SPA/SYS_mess/SYS_Start.bmg --patch replace=../BMG/SPA/SYS_Start.txt >NUL
	copy /b ..\BMG\SPA\script.arc accf-data\files\Script\SPA\script.arc >NUL
	wbmgt patch accf-data/files/Script/ITA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/ITA/NPC_gatekeeperA.txt >NUL
	wbmgt patch accf-data/files/Script/ITA/NPC_SP/NPC_periko.bmg --patch replace=../BMG/ITA/NPC_periko.txt >NUL
	wbmgt patch accf-data/files/Script/ITA/NPC_SP/NPC_perimi.bmg --patch replace=../BMG/ITA/NPC_perimi.txt >NUL
	wbmgt patch accf-data/files/Script/ITA/NPC_SP/NPC_tel.bmg --patch replace=../BMG/ITA/NPC_tel.txt >NUL
	wbmgt patch accf-data/files/Script/ITA/SYS_mess/SYS_Bus.bmg --patch replace=../BMG/ITA/SYS_Bus.txt >NUL
	wbmgt patch accf-data/files/Script/ITA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/ITA/SYS_NetworkError.txt >NUL
	wbmgt patch accf-data/files/Script/ITA/SYS_mess/SYS_Start.bmg --patch replace=../BMG/ITA/SYS_Start.txt >NUL
	copy /b ..\BMG\ITA\script.arc accf-data\files\Script\ITA\script.arc >NUL
	)
mkdir wiimmfi-images
cls
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo.
echo Please wait. Patcher is now completing patching...
wit copy accf-data wiimmfi-images --update --psel=DATA --wiimmfi -ovv
wit move wiimmfi-images/accf-data.wbfs wiimmfi-images

rmdir accf-data
goto exit_patcher
:exit_patcher
set /a exiting=10
set /a timeouterror=1
timeout 1 /nobreak >NUL && set /a timeouterror=0
goto end1
:end1
mode 120,30
cls
cls
echo.
echo                                      Animal Crossing: City Folk - Wiimmfi/RC24 Patcher
echo ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ
echo  [*] Thanks for using that Patcher! :)
echo.
if %patchingok%==1 echo Patching is successfull.
if %patchingok%==1 echo Patched WBFS file should be in folder called "wiimmfi-images"
echo.
echo Exiting the patcher in...
if %exiting%==10 echo :----------: 10
if %exiting%==9 echo :--------- : 9
if %exiting%==8 echo :--------  : 8
if %exiting%==7 echo :-------   : 7
if %exiting%==6 echo :------    : 6
if %exiting%==5 echo :-----     : 5
if %exiting%==4 echo :----      : 4
if %exiting%==3 echo :---       : 3
if %exiting%==2 echo :--        : 2
if %exiting%==1 echo :-         : 1
if %exiting%==0 echo :          :
if %exiting%==0 exit
if %timeouterror%==0 timeout 1 /nobreak >NUL
if %timeouterror%==1 ping localhost -n 2 >NUL
set /a exiting=%exiting%-1
goto end1
