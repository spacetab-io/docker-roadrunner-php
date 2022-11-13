alpine-spiral80: NAME = spacetabio/roadrunner-alpine:8.0-spiral
alpine-spiral80:
	docker build --platform=linux/amd64 -f "spiral/8.0/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-spiral-xdebug80: NAME = spacetabio/roadrunner-alpine:8.0-spiral-xdebug
alpine-spiral-xdebug80:
	docker build -f "spiral-xdebug/8.0/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

spiral80: alpine-spiral80 alpine-spiral-xdebug80
