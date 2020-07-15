#@(#) Makefile started by makeout(1) 2020-07-14 22:14:07

NULL=
PROGFILES = \
 ../test/test1/kracken_test-1.f90 \
 ../test/test2/kracken_test-2.f90 \
 ../test/test3/kracken_test-3.f90 \
 $(NULL)

PROG = ${PROGFILES:.f90=}

SRCS =  M_kracken95.f90 
OBJS =  M_kracken95.o 

# platform-specific values you will probably change
LIBS := 
FC := gfortran
FCFLAGS := -O
LDFLAGS := 

all: $(PROG) 
	: That is all, Folks!

$(PROG): $(OBJS)
	-$(FC) $(LDFLAGS) $@.f90 -o $@ $(OBJS) $(LIBS)||echo "ouch: $@.f90 "

clean:
	rm -f $(PROG) $(OBJS) *.mod

.SUFFIXES: $(SUFFIXES) .f90 .F90 

.f90.o:
	$(FC) $(FCFLAGS) -c $<
.F90.o:
	$(FC) $(FCFLAGS) -c $<
