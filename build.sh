#!/bin/sh -e

ASM="uxnasm"
EMU="uxn11"
LIN="uxncli $HOME/roms/uxnlin.rom"

SRC="src/bicycle.tal"
DST="bin/bicycle.rom"

CPY="$HOME/roms"
ETC=""
ARG=""

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
$EMU $DST $ARG

