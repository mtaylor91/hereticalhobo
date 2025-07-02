

.PHONY: all clean dev-server publish


STATIC_FILES := $(notdir $(wildcard static/*))
PUBLIC_STATIC_FILES := $(addprefix public/static/, $(STATIC_FILES))
PUBLIC := public/elm.js public/index.html public/styles.css $(PUBLIC_STATIC_FILES)


all: ${PUBLIC}


clean:
	rm -rf public


dev-server:
	caddy run --config Caddyfile.dev


publish: ${PUBLIC}
	./bin/publish.sh


public/%: %
	mkdir -p public
	cp $< public/$<


public/elm.js: src/Main.elm
	elm make src/Main.elm --optimize --output=public/elm.js


public/static/%: static/%
	mkdir -p public/static
	cp static/$* public/static/$*
