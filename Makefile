

.PHONY: all clean dev-server


STATIC_FILES = $(notdir $(wildcard static/*))
PUBLIC_STATIC_FILES = $(addprefix public/static/, $(STATIC_FILES))


all: public/elm.js public/index.html public/styles.css $(PUBLIC_STATIC_FILES)


clean:
	rm -rf public


dev-server:
	caddy run --config Caddyfile.dev


public/%: %
	mkdir -p public
	cp $< public/$<


public/elm.js: src/Main.elm
	elm make src/Main.elm --optimize --output=public/elm.js


public/static/%: static/%
	mkdir -p public/static
	cp static/$* public/static/$*
