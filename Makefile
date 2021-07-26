VERSION = 1.3.0
PUSH = false

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

alpine-base80: NAME = spacetabio/roadrunner-alpine:8.0-base
alpine-base80:
	docker build -f "base/8.0/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

alpine-base-xdebug80: NAME = spacetabio/roadrunner-alpine:8.0-base-xdebug
alpine-base-xdebug80:
	docker build -f "base-xdebug/8.0/alpine.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base74: alpine-base74 alpine-base-xdebug74
base80: alpine-base80 alpine-base-xdebug80

all: base74 base80
