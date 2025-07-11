CLOUDFLARE_PAGES_PROJECT ?= hereticalhobo


.PHONY: all clean dev-server publish


ELM_FILES := $(shell find src -name '*.elm')
STATIC_FILES := $(notdir $(wildcard static/*))
PUBLIC_STATIC_FILES := $(addprefix public/static/, $(STATIC_FILES))
PUBLIC := public/elm.js public/index.html public/styles.css $(PUBLIC_STATIC_FILES)


all: ${PUBLIC}


clean:
	rm -rf public


dev-server: ${PUBLIC}
	caddy run --config Caddyfile.dev


publish: ${PUBLIC}
	./bin/publish.sh $(CLOUDFLARE_PAGES_PROJECT)


public/%: %
	mkdir -p public
	cp $< public/$<


public/elm.js: $(ELM_FILES)
	elm make src/Main.elm --optimize --output=public/elm.js


public/static/%: static/%
	mkdir -p public/static
	cp static/$* public/static/$*
