all: build-arm64 push-arm64 build-amd64 push-amd64

arm64: build-arm64 push-arm64

amd64: build-amd64 push-amd64

build-arm64:
	docker build \
		--tag johnjohnofficial/drone-bash-plugin:arm64 \
		--platform=linux/arm64 \
		--file docker/Dockerfile .

push-arm64:
	docker push \
		johnjohnofficial/drone-bash-plugin:arm64

build-amd64:
	docker build \
		--tag johnjohnofficial/drone-bash-plugin:amd64 \
		--platform=linux/amd64 \
		--file docker/Dockerfile .

push-amd64:
	docker push \
		johnjohnofficial/drone-bash-plugin:amd64