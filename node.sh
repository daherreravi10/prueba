#!/bin/bash
sudo apt install nodejs -y
node -v
sudo apt install npm -y
npm -v

git clone https://github.com/omondragon/consulService
cd consulService/app
npm install express
npm install consul