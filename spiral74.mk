alpine-spiral74: NAME = spacetabio/roadrunner-alpine:7.4-spiral
alpine-spiral74:
	docker build --platform=linux/amd64 -f "spiral/7.4/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-spiral-xdebug74: NAME = spacetabio/roadrunner-alpine:7.4-spiral-xdebug
alpine-spiral-xdebug74:
	docker build -f "spiral-xdebug/7.4/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

spiral74: alpine-spiral74 alpine-spiral-xdebug74
