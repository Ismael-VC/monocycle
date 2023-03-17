#!/bin/sh -e

ASM="uxnasm"
EMU="uxnemu"
LIN="uxncli $HOME/roms/uxnlin.rom"

SRC="src/bicycle.tal"
DST="bin/bicycle.rom"

CPY="$HOME/roms"
ETC=""
ARG="hello world\0"

echo ">> Cleaning"
rm -rf bin
mkdir bin

if [[ "$*" == *"--lint"* ]]
then
    echo ">> Linting $SRC"
	$LIN $SRC $ETC
fi

echo ">> Assembling $SRC"
$ASM $SRC $DST

if [[ "$*" == *"--save"* ]]
then
    echo ">> Saving $DST"
	cp $DST $CPY
fi

echo ">> Running $DST"
# $EMU $DST $ARG
uxnemu ~/roms/left.rom etc/example.txt | uxnemu $DST

