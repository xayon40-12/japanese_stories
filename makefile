STORYDIRS := $(wildcard stories/*)
STORIES   := $(notdir $(STORYDIRS))
PLAIN_SVGS := $(addprefix assets/,$(addsuffix .svg,$(STORIES)))
DARK_SVGS  := $(addprefix assets/,$(addsuffix -dark.svg,$(STORIES)))
SVGS       := $(PLAIN_SVGS) $(DARK_SVGS)

.PHONY: all
all: $(SVGS)
	cd assets && git add -A && git commit -m "update stories svg" && git push

assets/%.svg: stories/%/main.typ
	typst compile $< $@ --format svg
	
assets/%-dark.svg: stories/%/main.typ
	typst compile $< $@ --format svg --input theme=dark

.PHONY: clean
clean:
	$(RM) $(SVGS)
