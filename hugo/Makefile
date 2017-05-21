JPEG_ORIGINAL = $(shell find content/ -type f -name '*.jpg' ! -name '*__thumbnail-*' )
PNG_ORIGINAL = $(shell find content/ -type f -name '*.png' ! -name '*__thumbnail-*' )
IMG_SQUARE = $(patsubst %.jpg, %__thumbnail-square.jpg, $(HUGO_JPEG_ORIGINAL))
#$(patsubst %.png, %__thumbnail-square.png, $(HUGO_PNG_ORIGINAL))
IMG_WIDE = $(patsubst %.jpg, %__thumbnail-wide.jpg, $(HUGO_JPEG_ORIGINAL))
#$(patsubst %.png, %__thumbnail-wide.png, $(HUGO_PNG_ORIGINAL))


all: assets

assets: jpeg

jpeg: $(IMG_SQUARE) $(IMG_WIDE)

%__thumbnail-square.jpg: %.jpg
	convert  -geometry 800x800^ -gravity center -crop 800x800+0+0 "$<" "$@"

%__thumbnail-wide.jpg: %.jpg
	convert "$<" -resize "750>" "$@"

%__thumbnail-square.png: %.png
	convert  -geometry 800x800^ -gravity center -crop 800x800+0+0 "$<" "$@"

%__thumbnail-wide.png: %.png
	convert "$<" -resize "750>" "$@"

clean:
	find . -name '*thumbnail*' -delete

hugo:
	hugo server --buildDrafts -w

build:
	docker build -t ajiro/ajiro.fr .
	docker push ajiro/ajiro.fr
