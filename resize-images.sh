#!/bin/sh
rm -rf images
mkdir images

for w in 2280 1140 570; do
	convert images_source/house.jpg -resize ${w}x images/houses_${w}.jpg
done

mkdir images/projects

for w in 1440 1040 760 380; do
	for i in images_source/projects/*.jpg; do
		convert $i -resize ${w}x images/projects/$(basename $i .jpg)_$w.jpg;
	done
done