alpine-spiral81: NAME = spacetabio/roadrunner-alpine:8.1-spiral
alpine-spiral81:
	docker build --platform=linux/amd64 -f "spiral/8.1/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-spiral-xdebug81: NAME = spacetabio/roadrunner-alpine:8.1-spiral-xdebug
alpine-spiral-xdebug81:
	docker build --platform=linux/amd64 -f "spiral-xdebug/8.1/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

spiral81: alpine-spiral81 alpine-spiral-xdebug81
