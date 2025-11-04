#!/bin/bash
# Atualiza pacotes e instala wget e OpenJDK 17
apt-get update && apt-get install -y openjdk-17-jdk wget

# Cria pasta do servidor
mkdir -p /home/runner/eaglercraft-server
cd /home/runner/eaglercraft-server

# Baixa o servidor Eaglercraft 1.12.2
wget -O server.jar https://github.com/lax1dude/eaglercraftx-1.12.2/releases/download/v1.12.2-server/eaglercraft-server-1.12.2.jar

# Executa o servidor
java -Xmx1024M -Xms1024M -jar server.jar nogui
