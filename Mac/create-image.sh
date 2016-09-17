echo "Wiimmfi Patcher for Animal Crossing: City Folk."
echo "Patcher by PokeAcer and Larsenv. SZS and ISO tools by Wiimm."
echo "This will both patch the server URLs and change the text from Nintendo WFC to Wiimmfi."
echo "This also patches Nintendo's DLC key to receive DLC from RiiConnect24. For more information, please go to http://riiconnect24.net."

echo "Extracting..."
./wit extract . --DEST ./accf-data/ --psel=DATA --wiimmfi

cp ./accf-data/disc/header.bin header.bin

ID="$(wit id6 *.wbfs)"
VERSION="$ID$(./version)"

rm header.bin

if [ $VERSION -eq RUUE010 ]
	OFFSET="80474CB8"
	BMG="USA"
if [ $VERSION -eq RUUE011 ]
	OFFSET="80474F38"
	BMG="USA"
if [ $VERSION -eq RUUJ011 ]
	OFFSET="80474DE8"
	BMG="JPN"
if [ $VERSION -eq RUUK011 ]
	OFFSET="8047DE98"
	BMG="KOR"
if [ $VERSION -eq RUUP010 ]
	OFFSET="804753F8"
	BMG="EUR"
if [ $VERSION -eq RUUP011 ]
	OFFSET="80475678"
	BMG="EUR"