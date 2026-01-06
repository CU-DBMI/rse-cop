.PHONY: help preview

help:
	@echo "Available make targets:"
	@echo "  preview    Run Jekyll via Docker at http://localhost:4000"

preview:
	docker run --rm -it \
		-v "$$PWD":/srv/jekyll \
		-p 4000:4000 \
		jekyll/jekyll:4 \
		sh -c "bundle config set --local path vendor/bundle && bundle install && bundle exec jekyll serve --host 0.0.0.0"
