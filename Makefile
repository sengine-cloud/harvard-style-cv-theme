.PHONY: build serve

# The demo site's configuration lives in _config.demo.yml rather than the
# conventional _config.yml. Jekyll merges a theme gem's _config.yml into the
# consuming site, so keeping the demo persona out of _config.yml prevents it
# from leaking placeholder values (name, address, phone, ...) into sites that
# use this repo as a theme.

build:
	bundle exec jekyll build --config _config.demo.yml

serve:
	bundle exec jekyll serve --config _config.demo.yml --livereload --watch
