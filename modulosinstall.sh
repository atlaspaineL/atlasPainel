#!/bin/bash
if [ -d "/opt/DragonCore/" ]; then
rm -f atlasdata.sh atlascreate.sh atlasteste.sh atlasremove.sh delete.py sincronizar.py add.sh rem.sh addteste.sh addsinc.sh remsinc.sh
wget -O atlascreate.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmd/atlascreate.sh"
wget -O atlasteste.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmd/atlasteste.sh"
wget -O atlasremove.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmd/atlasremove.sh"
wget -O delete.py "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmd/delete.py"
wget -O atlasdata.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmd/atlasdata.sh"
wget -O sincronizar.py "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmd/sincronizar.py"
chmod 777 atlascreate.sh add.sh remsinc.sh addsinc.sh rem.sh atlasteste.sh addteste.sh atlasremove.sh delete.py atlasdata.sh sincronizar.py
else
rm -f atlasdata.sh atlascreate.sh atlasteste.sh atlasremove.sh delete.py sincronizar.py add.sh rem.sh addteste.sh addsinc.sh remsinc.sh
wget -O atlascreate.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/atlascreate.sh"
wget -O add.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/add.sh"
wget -O remsinc.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/remsinc.sh"
wget -O addsinc.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/addsinc.sh"
wget -O rem.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/rem.sh"
wget -O atlasteste.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/atlasteste.sh"
wget -O addteste.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/addteste.sh"
wget -O atlasremove.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/atlasremove.sh"
wget -O delete.py "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/delete.py"
wget -O atlasdata.sh "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/atlasdata.sh"
wget -O sincronizar.py "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/sincronizar.py"
chmod 777 atlascreate.sh add.sh remsinc.sh addsinc.sh rem.sh atlasteste.sh addteste.sh atlasremove.sh delete.py atlasdata.sh sincronizar.py
fi
apt install dos2unix
dos2unix rem.sh
wget "https://raw.githubusercontent.com/atlaspaineL/atlasPainel/main/atlasmdd/verificador.py" -O verificador.py 
python3 verificador.py
