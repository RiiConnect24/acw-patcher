echo off
echo Wiimmfi Patcher for Animal Crossing Wii.
echo Patcher by PokeAcer. WIT and SZS tools by Wiimm.
echo This will both patch the server URLs and change the text from Nintendo WFC to Wiimmfi
echo This also patches Nintendo's DLC key to RiiConnect24's - change DNS to 185.82.21.64
echo What region of game do you have? (PAL/NTSC-U/NTSC-J/NTSC-K)
set /p region=
IF /i "%region%"=="NTSC-U" goto extract
IF /i "%region%"=="PAL" goto extract
IF /i "%region%"=="NTSC-K" goto extract
IF /i "%region%"=="NTSC-J" goto extract
echo Incorrect region.
goto commonexit

:extract
echo Extracting...
wit extract . --DEST ./accf-data/ --wiimmfi -vv
echo Done.
echo Patching...
IF /i "%region%"=="NTSC-U" goto NTSC-U
IF /i "%region%"=="PAL" goto PAL
IF /i "%region%"=="NTSC-K" goto NTSC-K



:PAL
echo Adding custom WC24 key (This allows you to receive own DLC - DNS 185.82.21.64)
wit dolpatch accf-data/DATA/sys/main.dol 804753f8=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D
wbmgt patch accf-data/DATA/files/Script/ENG/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/ENG/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/ENG/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/ENG/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/ENG/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/ENG/SYS_NetworkError.txt
wbmgt patch accf-data/DATA/files/Script/FRA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/FRA/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/FRA/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/FRA/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/FRA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/FRA/SYS_NetworkError.txt
wbmgt patch accf-data/DATA/files/Script/SPA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/SPA/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/SPA/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/SPA/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/SPA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/SPA/SYS_NetworkError.txt
echo Done.
wit copy accf-data done/RUUP01.wbfs --update --psel=data --wiimmfi -vv
goto commonexit

:NTSC-U
echo Adding custom WC24 key (This allows you to receive own DLC - DNS 185.82.21.64)
wit dolpatch accf-data/DATA/sys/main.dol 80474CB8=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D
wbmgt patch accf-data/DATA/files/Script/ENG/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/ENG/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/ENG/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/ENG/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/ENG/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/ENG/SYS_NetworkError.txt
wbmgt patch accf-data/DATA/files/Script/FRA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/FRA/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/FRA/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/FRA/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/FRA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/FRA/SYS_NetworkError.txt
wbmgt patch accf-data/DATA/files/Script/GER/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/GER/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/GER/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/GER/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/GER/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/GER/SYS_NetworkError.txt
wbmgt patch accf-data/DATA/files/Script/SPA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/SPA/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/SPA/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/SPA/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/SPA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/SPA/SYS_NetworkError.txt
wbmgt patch accf-data/DATA/files/Script/ITA/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/ITA/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/ITA/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/ITA/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/ITA/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/ITA/SYS_NetworkError.txt
echo Done.
wit copy accf-data done/RUUE01.wbfs --update --psel=data --wiimmfi -vv
goto commonexit


:NTSC-K
echo Adding custom WC24 key (This allows you to receive own DLC - DNS 185.82.21.64)
wit dolpatch accf-data/DATA/sys/main.dol 8047de98=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D
wbmgt patch accf-data/DATA/files/Script/KOR/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/KOR/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/KOR/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/KOR/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/KOR/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/KOR/SYS_NetworkError.txt
wbmgt patch accf-data/DATA/files/Script/JPN/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMG/JPN/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/JPN/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMG/JPN/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/JPN/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMG/JPN/SYS_NetworkError.txt

echo Done.
wit copy accf-data done/RUUK01.wbfs --update --psel=data --wiimmfi -vv
goto commonexit

:NTSC-J
echo Adding custom WC24 key (This allows you to receive own DLC - DNS 185.82.21.64)
wit dolpatch accf-data/DATA/sys/main.dol 80474de8=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D
wbmgt patch accf-data/DATA/files/Script/JPN/NPC_SP/NPC_gatekeeperA.bmg --patch replace=../BMGs/JPN/NPC_gatekeeperA.txt
wbmgt patch accf-data/DATA/files/Script/JPN/NPC_SP/NPC_gatekeeperB.bmg --patch replace=../BMGs/JPN/NPC_gatekeeperB.txt
wbmgt patch accf-data/DATA/files/Script/JPN/SYS_mess/SYS_NetworkError.bmg --patch replace=../BMGs/JPN/SYS_NetworkError.txt
echo Done.
wit copy accf-data done/RUUJ01.wbfs --update --psel=data --wiimmfi -vv
goto commonexit

:commonexit
echo If your patch completed successfully, your WBFS will now be in "done" - please copy this to your USB.
pause