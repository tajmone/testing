#!/bin/bash

## Get Environment Info
#######################

if [[ $(uname -s) == MINGW* ]]
	then os=Win
	else os=Lnx
fi

vDia=$(dia -v | grep -oP "(\d\.\d+(\.\d+)?)|(g[0-f]+)")
vSVGO=$(svgo -v)

## Set Output Filenames
#######################

fSVG="sample__${os}__Dia-${vDia}.svg"
fSVGO="${fSVG%*.svg}__SVGO-${vSVGO}.svg"

## Convert Dia to SVG
#####################

echo -e "\n\033[1;34mConverting Dia to SVG:\033[1;33m $fSVG\033[0m"
dia -n -t cairo-svg sample.dia
mv sample.svg $fSVG

## Optimize SVG via SVGO
########################

echo -e "\n\033[1;34mOptimizing via SVGO:\033[1;33m $fSVGO\033[0m"
svgo -o $fSVGO -i $fSVG
