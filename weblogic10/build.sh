#!/bin/bash

# war and springboot
# cd ../../HelloJava/HelloWar/
# ./package.sh

# cd ../HelloWebWar/
# ./package.sh

# cd ../../HelloDocker/weblogic10
# cp ../../HelloJava/HelloWar/target/war-0.0.1-SNAPSHOT.war ./webapps
# cp ../../HelloJava/HelloWebWar/target/web_war-0.0.1-SNAPSHOT.war ./webapps

# ear
# cp ../../HelloJava/HelloEar/ear.ear ./webapps

# ams
cd ../../nx/ams/
./package.sh
cd ../../HelloDocker/weblogic10
cp ../../nx/ams-web/target/ams-3.0.0.war ./webapps

rm ./webapps/ams -rf
mv ../../nx/ams-web/target/ams ./webapps
rm ./webapps/ams/WEB-INF/lib/xml-apis-*.jar
chmod a+w -R ../
chmod a+w -R ../../nx

docker-compose build
