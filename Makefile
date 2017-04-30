JPEG_ORIGINAL = $(shell find assets/ -type f -name '*-o.jpg')
PNG_ORIGINAL = $(shell find assets/ -type f -name '*-o.png')
JPEG_800P = $(patsubst %-o.jpg, %-800p.jpg, $(JPEG_ORIGINAL)) $(patsubst %-o.png, %-800p.jpg, $(PNG_ORIGINAL))

HUGO_JPEG_ORIGINAL = $(shell find content/ -type f -name '*.jpg' ! -name '*__thumbnail-*' )
HUGO_JPEG_SQUARE = $(patsubst %.jpg, %__thumbnail-square.jpg, $(HUGO_JPEG_ORIGINAL))
HUGO_JPEG_WIDE = $(patsubst %.jpg, %__thumbnail-wide.jpg, $(HUGO_JPEG_ORIGINAL))


all: assets

assets: jpeg

jpeg: $(JPEG_800P) $(HUGO_JPEG_SQUARE) $(HUGO_JPEG_WIDE)

%-800p.jpg: %-o.jpg
	convert "$<" -resize "800>" -quality 70 "$@"

%-o.jpg: %-o.png
		convert "$<" -quality 95 -background white "$@"

%__thumbnail-square.jpg: %.jpg
	convert  -geometry 800x800^ -gravity center -crop 800x800+0+0 "$<" "$@"

%__thumbnail-wide.jpg: %.jpg
	convert "$<" -resize "750>" "$@"

clean:
	rm -rf ${HUGO_JPEG_SQUARE}
	find . -name '*thumbnail*' -delete

hugo:
	hugo server --buildDrafts -w
