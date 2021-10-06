alpine-base81: NAME = spacetabio/roadrunner-alpine:8.1-base
alpine-base81:
	docker build -f "base/8.1/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-base-xdebug81: NAME = spacetabio/roadrunner-alpine:8.1-base-xdebug
alpine-base-xdebug81:
	docker build -f "base-xdebug/8.1/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base81: alpine-base81 alpine-base-xdebug81
