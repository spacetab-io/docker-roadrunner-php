VERSION = 1.4.0
PUSH = false

include base74.mk
include base80.mk

include spiral74.mk
include spiral80.mk

all: base74 base80 spiral74 spiral80
