#!/bin/bash
clear
echo "
   _____  _________           .___                 __         .__  .__                 ___.           __________                           .__ 
  /     \ \_   ___ \          |   | ____   _______/  |______  |  | |  |   ___________  \_ |__ ___.__. \____    /___.__. ____   ____ ______ |__|
 /  \ /  \/    \  \/   ______ |   |/    \ /  ___/\   __\__  \ |  | |  | _/ __ \_  __ \  | __ <   |  |   /     /<   |  |/    \ /  _ \\____ \|  |
/    Y    \     \____ /_____/ |   |   |  \\___ \  |  |  / __ \|  |_|  |_\  ___/|  | \/  | \_\ \___  |  /     /_ \___  |   |  (  <_> )  |_> >  |
\____|__  /\______  /         |___|___|  /____  > |__| (____  /____/____/\___  >__|     |___  / ____| /_______ \/ ____|___|  /\____/|   __/|__|
        \/        \/                   \/     \/            \/               \/             \/\/              \/\/         \/       |__|       "

echo
#Get paramaters from user
echo -e "Select a folder where you want install server: "
read mc_installdir
echo -e "Choose version of paper you want install (1.7.10, 1.8.8, 1.9.4, 1.10.2, 1.11.2, 1.12.2, 1.13.2, 1.14.4, 1.15.2, 1.16.5, 1.17.1, 1.18.2, 1.19.4, 1.20.6, 1.21.10): "
read mc_installver
echo -e "Select a network port: "
read mc_serverport
echo -e "Select RAM you want allocate to server (512M, 1024M, 2048M, 4096M etc...): "
read mc_serverram
echo -e "Name of your mc-session in screen: "
read mc_sessionname
echo

#Process
mkdir $mc_installdir ;
cd $mc_installdir 
apt update -y ;
apt install screen ;

case $mc_installver in 
    "1.7.10")
        wget https://fill-data.papermc.io/v1/objects/33772078d92e9dbb027602da016524ef29af5b4c12eaddac1fe2465b01108185/paper-1.7.10-2025.jar ;
        mv paper-1.7.10-2025.jar server.jar
        apt install openjdk-8-jre -y ;
    ;;

    "1.8.8")
        wget https://fill-data.papermc.io/v1/objects/7ff6d2cec671ef0d95b3723b5c92890118fb882d73b7f8fa0a2cd31d97c55f86/paper-1.8.8-445.jar ;
        mv paper-1.8.8-445.jar server.jar 
        apt install openjdk-8-jre -y ;
    ;;

    "1.9.4")
        wget https://fill-data.papermc.io/v1/objects/15a5821ddeacc596432c3fbf24262a2d264f556060ecd6f1838fb01ab5629a81/paper-1.9.4-775.jar ;
        mv paper-1.9.4-775.jar server.jar
        apt install openjdk-8-jre -y ;
    ;;

    "1.10.2")
        wget https://fill-data.papermc.io/v1/objects/83354d24a22b6265e76c089b3d17a568abb446c0ccd12c2452f5e148412b16c2/paper-1.10.2-918.jar ;
        mv paper-1.10.2-918.jar server.jar
        apt install openjdk-8-jre -y ;
    ;;

    "1.11.2")
        wget https://fill-data.papermc.io/v1/objects/3d0f40ec1f9630dfdbafa626cc20c266d7fb90fc22583dc1b995e7fbfb76830d/paper-1.11.2-1106.jar ;
        mv paper-1.11.2-1106.jar server.jar
        apt install openjdk-8-jre -y ;
    ;;

    "1.12.2")
        wget https://fill-data.papermc.io/v1/objects/3a2041807f492dcdc34ebb324a287414946e3e05ec3df6fd03f5b5f7d9afc210/paper-1.12.2-1620.jar ;
        mv paper-1.12.2-1620.jar server.jar
        apt install openjdk-8-jre -y ;
    ;;

    "1.13.2")
        wget https://fill-data.papermc.io/v1/objects/11e828d0565ab76a0a0e180c056364a95de44958cfd6a6af3f9b1dc70b03e9cd/paper-1.13.2-657.jar ;
        mv paper-1.13.2-657.jar server.jar
        apt install openjdk-8-jre -y ;
    ;;

    "1.14.4")
        wget https://fill-data.papermc.io/v1/objects/bd8ec5cdb22370d37816a6de26798df3d2b0d6f9c7c96c88ca45a1303fea50e8/paper-1.14.4-245.jar ;
        mv paper-1.14.4-245.jar server.jar
        apt install openjdk-8-jre -y ;
    ;; 

    "1.15.2")
        wget https://fill-data.papermc.io/v1/objects/bd2dd6f2cc489cf9e2bb800cb4fb6d63e9d293945d3ac10b09dd9c6098fa9f34/paper-1.15.2-393.jar ;
        mv paper-1.15.2-393.jar server.jar
        apt install openjdk-8-jre -y ;
    ;;

    "1.16.5")
        wget https://fill-data.papermc.io/v1/objects/e67da4851d08cde378ab2b89be58849238c303351ed2482181a99c2c2b489276/paper-1.16.5-794.jar ; 
        mv paper-1.16.5-794.jar server.jar
        wget https://download.java.net/java/GA/jdk16.0.2/d4a915d82b4c4fbb9bde534da945d746/7/GPL/openjdk-16.0.2_linux-x64_bin.tar.gz ; 
        tar -xf openjdk-16.0.2_linux-x64_bin.tar.gz ;
    ;;

    "1.17.1")
        wget https://fill-data.papermc.io/v1/objects/6cc1ee2f94253ce10b5374ed85fffc735a97d8f1b64db293683dfa24dd3cc05f/paper-1.17.1-411.jar ;
        mv paper-1.17.1-411.jar server.jar
        wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz ; 
        tar -xf openjdk-17.0.2_linux-x64_bin.tar.gz ;
    ;;

    "1.18.2")
        wget https://fill-data.papermc.io/v1/objects/0578f18f4d632b494b468ec56b3b414b5b56fea087ee7d39cf6dcdf4c9d01f05/paper-1.18.2-388.jar ;
        mv paper-1.18.2-388.jar server.jar
        wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz ; 
        tar -xf openjdk-17.0.2_linux-x64_bin.tar.gz ;
    ;;

    "1.19.4")
        wget https://fill-data.papermc.io/v1/objects/e587d78cba3e99ef8c4bc24cf20cc3bdbbe89e33b0b572070446af4eb6be5ccf/paper-1.19.4-550.jar ; 
        mv paper-1.19.4-550.jar server.jar
        wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz ; 
        tar -xf openjdk-17.0.2_linux-x64_bin.tar.gz ;
    ;;

    "1.20.6")
        wget https://fill-data.papermc.io/v1/objects/4b011f5adb5f6c72007686a223174fce82f31aeb4b34faf4652abc840b47e640/paper-1.20.6-151.jar ;
        mv paper-1.20.6-151.jar server.jar
        wget https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz ;
        tar -xf openjdk-21.0.2_linux-x64_bin.tar.gz ;
    ;;

    "1.21.10")
        wget https://fill-data.papermc.io/v1/objects/764ea594261bfe4902c775994f122ba26a1d25b9cc61705867637b751950cd56/paper-1.21.10-89.jar ;
        mv paper-1.21.10-89.jar server.jar 
        wget https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz ;
        tar -xf openjdk-21.0.2_linux-x64_bin.tar.gz ;
    ;;

    *)
        echo -e "Invalid"
        ;;
esac

cd $mc_installdir

java -jar $mc_installdir/server.jar ;

touch $mc_installdir/run.sh ;

case $mc_installver in 
    "1.7.10")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.8.8")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.9.4")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.10.2")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.11.2")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    
    ;;

    "1.12.2")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.13.2")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.14.4")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;; 

    "1.15.2")
        echo "screen -S Minecraft-$mc_sessionname /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.16.5")
        echo "screen -S Minecraft-$mc_sessionname $mc_installdir/jdk-16.0.2/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.17.1")
        echo "screen -S Minecraft-$mc_sessionname $mc_installdir/jdk-17.0.2/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.18.2")
        echo "screen -S Minecraft-$mc_sessionname $mc_installdir/jdk-17.0.2/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.19.4")
        echo "screen -S Minecraft-$mc_sessionname $mc_installdir/jdk-17.0.2/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.20.6")
        echo "screen -S Minecraft-$mc_sessionname $mc_installdir/jdk-21.0.2/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    "1.21.10")
        echo "screen -S Minecraft-$mc_sessionname $mc_installdir/jdk-21.0.2/bin/java -Xmx4096M -Xms4096M -jar $mc_installdir/server.jar" > $mc_installdir/run.sh ;
    ;;

    *)
        echo -e "Invalid"
        ;;
esac

#sed -i "s/-XmxM/-XmxM$mc_serverramM/g" $mc_installdir/run.sh ;
#sed -i "s/-XmsM/-XmsM$mc_serverramM/g" $mc_installdir/run.sh ;

ufw allow $mc_serverport/tcp ;

echo "eula=true" > $mc_installdir/eula.txt ;

echo "server-port=$mc_serverport" > $mc_installdir/server.properties ;

bash $mc_installdir/run.sh


