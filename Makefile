IMG=sgr0502/matplotlib

.PHONY: all image dist run test clean depclean

all: run

image:
	docker build -f Dockerfile -t $(IMG) .

run: image
	docker run --rm -it $(IMG) /bin/sh

clean:
	-docker rmi $(IMG)
