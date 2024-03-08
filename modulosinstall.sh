#!/bin/bash
rm -f atlasdata.sh atlascreate.sh atlasteste.sh atlasremove.sh delete.py sincronizar.py add.sh rem.sh addteste.sh addsinc.sh remsinc.sh
wget -O atlascreate.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345429875687525/atlascreate.sh?ex=65fcae05&is=65ea3905&hm=106fd01f1512df6d5efb5363d3f1c0294738928db47c1a5e93b49d0429be2d01&"
wget -O add.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345432019112036/add.sh?ex=65fcae06&is=65ea3906&hm=010ad7f5531c9e258d256a3e88a70c841cc41caeda890166db82241b6a41ce5b&"
wget -O remsinc.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345399177576548/remsinc.sh?ex=65fcadfe&is=65ea38fe&hm=790b70e6576de637dadf505f50f3f070ca76526fdb997f2ed042ced86e7c21d6&"
wget -O addsinc.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345432413241434/addsinc.sh?ex=65fcae06&is=65ea3906&hm=4b45fd424ee64b0b9bbd51fee5192573273686d652a85b57ae933eb689f0db14&"
wget -O rem.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345398779256843/rem.sh?ex=65fcadfe&is=65ea38fe&hm=c6b05f5eaa17126e34aa420345354c611412e6e09120766a0ba9cbbf3383ded5&"
wget -O atlasteste.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345431142240306/atlasteste.sh?ex=65fcae05&is=65ea3905&hm=d398c551f3eeb5ffd1522ec04d329ec769459759ec240ac9641868bfef4b2fe2&"
wget -O addteste.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345429494140949/addteste.sh?ex=65fcae05&is=65ea3905&hm=f1567b48a6a03b38186462e3c571889f4041a92bad12dfa9e1af22e0c1510e78&"
wget -O atlasremove.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345430676668437/atlasremove.sh?ex=65fcae05&is=65ea3905&hm=c1692def5c15db57a4dd2721d1455d4540b694c97e4c8a8c65a514d1d56b85e0&"
wget -O delete.py "https://cdn.discordapp.com/attachments/1128072496298598501/1210345398435188756/delete.py?ex=65fcadfe&is=65ea38fe&hm=93a1af01a419e934d87652e59357679abbd939c608025cc998f0da97030c5c7f&"
wget -O atlasdata.sh "https://cdn.discordapp.com/attachments/1128072496298598501/1210345430211362947/atlasdata.sh?ex=65fcae05&is=65ea3905&hm=265331363bd474dd949426c7e26a08d8a0b054017514976f45f5baceb6db4cda&"
wget -O sincronizar.py "https://cdn.discordapp.com/attachments/1128072496298598501/1210345399563325497/sincronizar.py?ex=65fcadfe&is=65ea38fe&hm=4270493d97c9305aea0638c8d5e00f63880dc8ac61724a7cc6ffb619b26e7fe6&"
chmod 777 atlascreate.sh add.sh remsinc.sh addsinc.sh rem.sh atlasteste.sh addteste.sh atlasremove.sh delete.py atlasdata.sh sincronizar.py
sudo apt install dos2unix
dos2unix rem.sh
wget "https://cdn.discordapp.com/attachments/1206792024729194526/1215118238954815598/verificador.py?ex=65fb960b&is=65e9210b&hm=7d64fc0a4efc67ded6c6d4d93fbbcb19a52a15fbcba9c1bb633e9af42e6e4eea&" -O verificador.py 
python3 verificador.py
