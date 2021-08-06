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

base80: alpine-base80 alpine-base-xdebug80
