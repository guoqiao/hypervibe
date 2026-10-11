build:
	bash build.sh

bundle:
	bash create_app_bundle.sh

install: build
	bash create_app_bundle.sh
	ditto HyperVibe.app /Applications/HyperVibe.app

kill:
	pkill -9 HyperVibe || true

open:
	open HyperVibe.app

full: kill build bundle open
