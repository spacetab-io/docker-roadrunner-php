alpine-base82: NAME = spacetabio/roadrunner-alpine:8.2-base
alpine-base82:
	docker build --platform=linux/amd64 -f "base/8.2/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-base-xdebug82: NAME = spacetabio/roadrunner-alpine:8.2-base-xdebug
alpine-base-xdebug82:
	docker build --platform=linux/amd64 -f "base-xdebug/8.2/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base82: alpine-base82 alpine-base-xdebug82
