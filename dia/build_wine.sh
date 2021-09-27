#!/bin/bash

vDia=$(wine Dia/bin/dia.exe -v | grep -oP "\d\.\d+(\.\d+)?")
vSVGO=$(svgo -v)

## Set Output Filenames
#######################

fSVG="sample__Wine__Dia-${vDia}.svg"
fSVGO="${fSVG%*.svg}__Lnx__SVGO-${vSVGO}.svg"

## Convert Dia to SVG
#####################

echo -e "\n\033[1;34mConverting Dia to SVG:\033[1;33m $fSVG\033[0m"
wine Dia/bin/dia.exe -n -t cairo-svg sample.dia
mv sample.svg $fSVG

## Optimize SVG via SVGO
########################

echo -e "\n\033[1;34mOptimizing via SVGO:\033[1;33m $fSVGO\033[0m"
svgo -o $fSVGO -i $fSVG
