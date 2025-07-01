

.PHONY: all clean dev-server


all: public/elm.js public/index.html public/static/background.jpg


clean:
	rm -rf public


dev-server:
	caddy run --config Caddyfile.dev


public/index.html: index.html
	mkdir -p public
	cp index.html public/index.html


public/elm.js: src/Main.elm
	elm make src/Main.elm --output=public/elm.js


public/static/%: static/%
	mkdir -p public/static
	cp static/$* public/static/$*
