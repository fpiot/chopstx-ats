# ATS language make pre rules.

DATS           = $(wildcard DATS/*.dats)
DATSC          = $(patsubst %.dats,%_dats.c,$(DATS))
DATSOBJ        = $(patsubst %.dats,%_dats.o,$(DATS))

ATSOPT          = $(PATSHOME)/bin/patsopt
ATSCFLAGS       = -fpermissive -w
ATSCFLAGS      += -D_ATS_CCOMP_HEADER_NONE
ATSCFLAGS      += -D_ATS_CCOMP_RUNTIME_NONE
ATSCFLAGS      += -D_ATS_CCOMP_PRELUDE_NONE
ATSCFLAGS      += -D_ATS_CCOMP_PRELUDE_USER=\"H/pats_ccomp.h\"
ATSCFLAGS      += -D_ATS_CCOMP_EXCEPTION_NONE
ATSCFLAGS      += -D_ATSTYPE_VAR_SIZE=128
ATSCFLAGS      += -I$(PATSHOME) -I$(PATSHOME)/ccomp/runtime -I${PATSHOMERELOC}/contrib -I${CHOPSTX}/metasepi

OPT            += ${ATSCFLAGS}

realall: all
.PHONY: realall

$(DATSC): %_dats.c: %.dats $(SATS)
	@echo
	$(ATSOPT) -o $@ -d $<
