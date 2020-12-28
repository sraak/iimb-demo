#!/bin/bash

rm -rf iimb-demo

yarn generate
mv dist iimb-demo


cd server
go build -o main-osx .
cd ..
mv server/main-osx .

cd server
env GOOS=windows GOARCH=386 go build -o main-win32.exe .
cd ..
mv server/main-win32.exe .
