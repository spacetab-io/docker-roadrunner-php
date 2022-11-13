alpine-base74: NAME = spacetabio/roadrunner-alpine:7.4-base
alpine-base74:
	docker build --platform=linux/amd64 -f "base/7.4/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-base-xdebug74: NAME = spacetabio/roadrunner-alpine:7.4-base-xdebug
alpine-base-xdebug74:
	docker build --platform=linux/amd64  -f "base-xdebug/7.4/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base74: alpine-base74 alpine-base-xdebug74
