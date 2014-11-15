SUBDIRS := example-fsm-55 # example-fsm-55-ats
ODGS := $(wildcard metasepi/draw/*.odg)
PNGS := $(patsubst %.odg,%.png,${ODGS})

all clean:
	@for i in $(SUBDIRS); do \
		$(MAKE) -C $$i $@; \
	done

updatefig: ${PNGS}

%.png: %.odg
	unoconv -n -f png -o $@.tmp $< 2> /dev/null   || \
	  unoconv -f png -o $@.tmp $<                 || \
	  unoconv -n -f png -o $@.tmp $< 2> /dev/null || \
	  unoconv -f png -o $@.tmp $<
	convert -resize 800x $@.tmp $@
	rm -f $@.tmp

.PHONY: all clean updatefig
