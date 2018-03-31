.PHONY=lint

lint:
	prettier --write 'themes/*.json' '*.js' 'package.json'
