#!/bin/sh
quarto render
mkdir _book/datasets
cp -r datasets/* _book/datasets/
ssh root@justsharan.xyz 'rm -rf /var/www/html/stats/*'
scp -r _book root@justsharan.xyz:/var/www/html/stats/