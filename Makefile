VERSION = $(shell cat VERSION)

test-locally:
	echo Ricc.hi | bundler console

build:
	gem build ricc

deploy: build
	echo deploy Ricc v $(VERSION)..
	gem push ricc-0.0.1.gem
