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

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# platform-specific values you will probably change
# 
LIBS := 
CC := cc
CFLAGS := -O
FC := gfortran
FFLAGS := -O
LDFLAGS := 
# 
# You can either ignore it, or disable the "may be used uninitialized"
# warnings with -Wno-maybe-uninitialized or compile with optimizations
# (-O1 and more).
gfortran: F90=gfortran
gfortran: F90FLAGS := -g -O -Wall -std=f2018 -Wextra -Wno-maybe-uninitialized -Wno-uninitialized
gfortran: all
	@echo built with $(F90)

nvfortran: F90=nvfortran
nvfortran: F90FLAGS := -Minform=inform -Mbackslash -traceback
nvfortran: all
	@echo built with $(F90)

ifort: F90=ifort
ifort: F90FLAGS := -warn all -traceback
ifort: all
	@echo built with $(F90)

nagfor: F90=nagfor
nagfor: F90FLAGS := -C all
nagfor: all
	@echo built with $(F90)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

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
