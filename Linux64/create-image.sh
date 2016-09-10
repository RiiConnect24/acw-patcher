echo "Wiimmfi Patcher for Animal Crossing Wii."
echo "Patcher by PokeAcer. WIT and SZS tools by Wiimm. Custom WC24 Key owned by RiiConnect24"
echo "This will both patch the server URLs and change the text from Nintendo WFC to Wiimmfi."
echo "It also changes the Nintendo key to RiiConnect24's - set your DNS to 185.82.21.64 to use this."
read -p "What region of game do you have?: " region
echo "You set the region to $region."
pause
echo "Extracting..."
./wit extract . --DEST ./accf-data/ --psel=data --wiimmfi -vv
echo "Done."
if [ $region -eq "PAL" ]
then
  ./wit dolpatch accf-data/sys/main.dol 804753f8=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D
  ./wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_gatekeeperA.bmg --patch replace=BMG/$region/English/NPC_gatekeeperA.txt
  ./wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_gatekeeperB.bmg --patch replace=BMG/$region/English/NPC_gatekeeperB.txt
  ./wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_NetworkError.bmg --patch replace=BMG/$region/English/SYS_NetworkError.txt
   ./wit copy accf-data RUUP01.wbfs --update --psel=data --wiimmfi -vv
elseif [ $region -eq "NTSC-U" ]
then
  ./wit dolpatch accf-data/sys/main.dol 80474CB8=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D
  echo Patching BMG files....
  ./wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_gatekeeperA.bmg --patch replace=BMG/$region/English/NPC_gatekeeperA.txt
  ./wbmgt patch accf-data/files/Script/ENG/NPC_SP/NPC_gatekeeperB.bmg --patch replace=BMG/$region/English/NPC_gatekeeperB.txt
  ./wbmgt patch accf-data/files/Script/ENG/SYS_mess/SYS_NetworkError.bmg --patch replace=BMG/$region/English/SYS_NetworkError.txt
  ./wit copy accf-data RUUE01.wbfs --update --psel=data --wiimmfi -vv
elseif [ $region -eq "NTSC-K" ]
then
   ./wit dolpatch accf-data/sys/main.dol 804753f8=B1E7F92ACACD2034E602C73DF43CCE515731279711F4E105CB7E5E1D69EA2A56170E72E1F81CA9FA9EEFAC654BD6C6DC5E4AD1780C8F774BC3190CB618BA5483757D6734F8A1121B01986C6F28F1FAB6AFD2CFAC4570415F23C9B3D3F489934274CE61A93978E0C90A7584AC43330F73B09A8E3A75344D3C90BE67E70E0C1AB8A1C19396F5373EB92251D15EA13719D973A2E0143292ED28F86B16DC9A96D3F6271EAD8CE0764C7D4F88DBB2FD5E4C5CBC426D89434FA9D04E28EAF6C11E7B4C93A6701D344D891A65CB4C7C74FFC3551C5949A2D0368C6A68B81E8B985EB8665C72C3E6FF98A4B1AE4D5D7910729494A1E6F26D5AB2824262EC0482BDCE324D
  ./wbmgt patch accf-data/DATA/files/Script/KOR/NPC_SP/NPC_gatekeeperA.bmg --patch replace=BMG/NTSC-K/Korean/NPC_gatekeeperA.txt
  ./wbmgt patch accf-data/DATA/files/Script/KOR/NPC_SP/NPC_gatekeeperB.bmg --patch replace=BMG/NTSC-K/Korean/NPC_gatekeeperB.txt
  ./wbmgt patch accf-data/DATA/files/Script/KOR/SYS_mess/SYS_NetworkError.bmg --patch replace=BMG/NTSC-K/Korean/SYS_NetworkError.txt
    ./wit copy accf-data done/RUUK01.wbfs --update --psel=data --wiimmfi -vv

fi
echo "Done."
pause