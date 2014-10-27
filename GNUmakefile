SUBDIRS := example-fsm-55 example-fsm-55-ats

all clean:
	@for i in $(SUBDIRS); do \
		$(MAKE) -C $$i $@; \
	done

.PHONY: all clean
