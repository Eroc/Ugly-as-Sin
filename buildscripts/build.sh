#!/bin/bash
cd ..

# MENUDEF
rm ./menudef.txt
cat ./core/menudef.txt >> ./menudef.txt
find \
	-name "menudef*" \
	-not -path "./core/*" \
	-not -path "./menudef.txt" \
	-not -path "./core/menudef.txt" \
	-exec cat {} + >> ./menudef.txt

# CVARINFO
rm ./cvarinfo.txt
find \
	-name "cvarinfo*" \
	-exec cat {} + >> ./cvarinfo.txt

# MAPINFO
rm ./mapinfo.txt
find \
	-name "mapinfo*"
	-exec cat {} + >> ./mapinfo.txt

# ZSCRIPT
rm ./zscript.zsc
echo "version \"4.5\"\n" >> ./zscript.zsc
find \
	-name "*.zsc"
	-exec cat {} + >> ./zscript.zsc

# TEXTUREs
rm ./textures.txt
find \
	-name "textures*"
	-exec cat {} + >> ./textures.txt
