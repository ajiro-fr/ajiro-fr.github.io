JPEG_ORIGINAL = $(shell find assets/ -type f -name '*-o.jpg')
JPEG_800P = $(patsubst %-o.jpg, %-800p.jpg, $(JPEG_ORIGINAL))

all: assets

assets: jpeg

jpeg: $(JPEG_800P)

%-800p.jpg: %-o.jpg
	convert "$<" -resize "800>" -quality 70 "$@"
