JPEG_ORIGINAL = $(shell find assets/ -type f -name '*-o.jpg')
PNG_ORIGINAL = $(shell find assets/ -type f -name '*-o.png')
JPEG_800P = $(patsubst %-o.jpg, %-800p.jpg, $(JPEG_ORIGINAL)) $(patsubst %-o.png, %-800p.jpg, $(PNG_ORIGINAL))


all: assets

assets: jpeg

jpeg: $(JPEG_800P)

%-800p.jpg: %-o.jpg
	convert "$<" -resize "800>" -quality 70 "$@"

%-o.jpg: %-o.png
		convert "$<" -quality 95 -background white "$@"
