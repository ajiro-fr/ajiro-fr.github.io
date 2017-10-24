IMAGE = ajiro/ajiro.fr
TAG = $(shell date +%Y%m%d)

JPEG_ORIGINAL = $(shell find content/ -type f -name '*.jpg' ! -name '*__thumbnail-*' )
PNG_ORIGINAL = $(shell find content/ -type f -name '*.png' ! -name '*__thumbnail-*' )
IMG_SQUARE = $(patsubst %.jpg, %__thumbnail-square.jpg, $(JPEG_ORIGINAL))
#$(patsubst %.png, %__thumbnail-square.png, $(PNG_ORIGINAL))
IMG_WIDE = $(patsubst %.jpg, %__thumbnail-wide.jpg, $(JPEG_ORIGINAL))
#$(patsubst %.png, %__thumbnail-wide.png, $(PNG_ORIGINAL))


all: assets

download_images:
	./analyse.py images download

assets: download_images images

images: $(IMG_SQUARE) $(IMG_WIDE)

clean:
	find . -name '*thumbnail*' -delete

build:
	docker build --pull -t ${IMAGE} .
	docker tag ${IMAGE} ${IMAGE}:${TAG}

test: build
	@docker rm -f ajiro || true
	docker run --name ajiro -d -p 8081:80 ${IMAGE}:${TAG}
	linkchecker --check-extern --anchors --ignore-url=^mailto: http://localhost:8081
	docker stop ajiro
	@docker rm -f ajiro || true

publish: build test
	docker push ${IMAGE}
	docker push ${IMAGE}:${TAG}

hugo:
	hugo server --buildDrafts --watch


%__thumbnail-square.jpg: %.jpg
	convert  -geometry 800x800^ -gravity center -crop 800x800+0+0 "$<" "$@"

%__thumbnail-wide.jpg: %.jpg
	convert "$<" -resize "750>" "$@"

%__thumbnail-square.png: %.png
	convert  -geometry 800x800^ -gravity center -crop 800x800+0+0 "$<" "$@"

%__thumbnail-wide.png: %.png
	convert "$<" -resize "750>" "$@"
