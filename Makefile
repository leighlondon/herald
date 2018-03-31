.PHONY=lint publish
lint:
	@script/lint.sh
publish:
	@script/deploy.sh
