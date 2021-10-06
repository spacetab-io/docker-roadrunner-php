VERSION = 1.6.0
PUSH = false

include base74.mk
include base80.mk
include base81.mk

include spiral74.mk
include spiral80.mk
include spiral81.mk

all: base74 base80 base81 spiral74 spiral80 spiral81
