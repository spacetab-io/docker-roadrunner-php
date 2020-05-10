VERSION = 1.0.0
PUSH = false

alpine-base73: NAME = spacetabio/roadrunner-alpine:7.3-base
alpine-base73:
	docker build -f "base/7.3/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-base-xdebug73: NAME = spacetabio/roadrunner-alpine:7.3-base-xdebug
alpine-base-xdebug73:
	docker build -f "base-xdebug/7.3/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-base74: NAME = spacetabio/roadrunner-alpine:7.4-base
alpine-base74:
	docker build -f "base/7.4/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-base-xdebug74: NAME = spacetabio/roadrunner-alpine:7.4-base-xdebug
alpine-base-xdebug74:
	docker build -f "base-xdebug/7.4/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base73: alpine-base73 alpine-base-xdebug73
base74: alpine-base74 alpine-base-xdebug74

all: base73 base74
